//
// Created by mrs on 14.12.20.
//

#include "mstsp.h"

#include <filesystem>

void Mstsp::process_data(){
        solution = solver.solve();
        //string result_filename = "grasp_"+ to_string(n_agents)+"_"+to_string(max_load_distance)+"_"+to_string(max_flight_time)+".csv";
        //write_csv(result_filename, solution);
}

Solution Mstsp::execute(){
    Solution current_sol = solver.solve();
    Solution best_sol = current_sol;
    for(auto i = 1; i < grasp_runs; i++) {
        solver.targets_from_segments(segments);
        current_sol = solver.solve();
        if (current_sol.solution_cost < best_sol.solution_cost) {
            best_sol = current_sol;
        }
    }
    return best_sol;
}


void Mstsp::read_config(std::string filename) {
    string package_path = ros::package::getPath("ms_tsp_planner");
    string config_path = std::filesystem::path(package_path).append("config").append(filename).string();
    if(std::filesystem::exists(config_path))
        ROS_INFO("found config file");
    Config config_yaml;
    config_yaml.readFile(config_path.c_str());

    config_yaml.lookupValue("max_pylon_distance",max_pylon_distance);
    config_yaml.lookupValue("max_flight_time", max_flight_time);
    config_yaml.lookupValue("n_uavs", n_agents);
    config_yaml.lookupValue("grasp_iterations", grasp_runs);

    string graph_name = "nechranice_graph.yaml";
    string uav_name = "f450.yaml";
    string grasp_name = "grasp_params.yaml";

    config_yaml.lookupValue("graph_file", graph_name);
    config_yaml.lookupValue("uav_file", uav_name);

    string graph_path = std::filesystem::path(package_path).append("config").append("graphs").append(graph_name).string();
    string uav_path = std::filesystem::path(package_path).append("config").append("uavs").append(uav_name).string();
    string grasp_path = std::filesystem::path(package_path).append("config").append(grasp_name).string();

    read_yaml_graph_data(graph_path);
    read_yaml_uav_data(uav_path);
    read_yaml_grasp_data(grasp_path);
}

void Mstsp::read_yaml_grasp_data(std::string filepath) {
    if(std::filesystem::exists(filepath))
        ROS_INFO("found grasp file");
    Config grasp_yaml;
    grasp_yaml.readFile(filepath.c_str());
    double w0;
    double p1;
    double p2;
    int R_T;
    grasp_yaml.lookupValue("w0",w0);
    grasp_yaml.lookupValue("p1",p1);
    grasp_yaml.lookupValue("p2",p2);
    grasp_yaml.lookupValue("R_T",R_T);
    solver = Solver_Grasp(uavs, segments);
    solver.set_config(w0, p1, p2, R_T);
}

void Mstsp::read_yaml_uav_data(std::string filepath) {
    if(std::filesystem::exists(filepath))
        ROS_INFO("found uav file");
    Config yaml_uav;
    yaml_uav.readFile(filepath.c_str());
    yaml_uav.lookupValue("v_max",v_max_global);
    yaml_uav.lookupValue("v_insp",v_insp_global);
    yaml_uav.lookupValue("a_max", a_max_global);
    yaml_uav.lookupValue("yaw_max", yaw_max_global);

    for(auto i = 0; i < n_agents; i++) {
        Uav_Agent agent(v_max_global, v_insp_global, a_max_global, 999, yaw_max_global, max_flight_time, depot_pos, segments);
        uavs.push_back(agent);
    }
}

void Mstsp::read_yaml_graph_data(std::string filepath) {
    if(std::filesystem::exists(filepath))
        ROS_INFO("found graph file");
    Config yaml_graph;
    yaml_graph.readFile(filepath.c_str());
    string pylon_positions = "";
    string pylon_connections = "";
    string land_stations = "";
    yaml_graph.lookupValue("pylons_position", pylon_positions);
    yaml_graph.lookupValue("connections_indexes", pylon_connections);
    yaml_graph.lookupValue("regular_land_stations", land_stations);

    stringstream depot_stream(land_stations);
    string line;
    getline(depot_stream, line);
    stringstream line_stream(line);
    double x, y, z;
    line_stream >> x;
    line_stream >> y;
    line_stream >> z;
    depot_pos = Vector3d(x,y,z);

    vector<Vector3d> pylons;
    stringstream pylons_stream(pylon_positions);
    while (getline(pylons_stream, line)) {
        line_stream = stringstream(line);
        line_stream >> x;
        line_stream >> y;
        line_stream >> z;
        pylons.push_back(Vector3d(x, y, z));
    }
    auto n = pylons.size();
    vector<vector<bool>> connection_graph(n, vector<bool>(n, false));
    stringstream connections_stream(pylon_connections);
    auto i = 0u;
    while (getline(connections_stream, line)) {
        line_stream = stringstream(line);
        string temp;
        int connection_index;
        while (line_stream >> temp) {
            if (stringstream(temp) >> connection_index) {
                connection_graph[i][connection_index - 1] = true;
            }
        }
        i++;
    }
    for (i = 0u; i < n; i++) {
        for (auto j = i + 1; j < n; j++) {
            if (connection_graph[i][j]) {
                vector<Vector3d> segment;
                segment.push_back(pylons.at(i));
                segment.push_back(pylons.at(j));
                if((pylons.at(i)-depot_pos).norm() < max_pylon_distance and (pylons.at(j)-depot_pos).norm() < max_pylon_distance) {
                    segments.push_back(segment);
                }
            }
        }
    }
}

void Mstsp::write_csv(string filename, Solution sol){
    // Make a CSV file with one column of integer values
    std::ofstream myFile(filename);
    // Send data to the stream
    myFile << sol.solution_cost << std::endl << sol.time_to_solve;
    for(auto route : sol.routes)
    {
        myFile << std::endl;
        for(auto i = 1u; i < route.size()-1; i++) {
            auto segment_id = route[i];
            Vector3d pylon0 = segments.at((segment_id/2)-1 ).at(0);
            Vector3d pylon1 = segments.at((segment_id/2)-1 ).at(1);
            if(segment_id % 2) {
                myFile << pylon1.x() << " " << pylon1.y() << ", ";
                myFile << pylon0.x() << " " << pylon0.y() << ", ";
            } else {
                myFile << pylon0.x() << " " << pylon0.y() << ", ";
                myFile << pylon1.x() << " " << pylon1.y() << ", ";
            }
        }
    }
    myFile.close();
}

//vector<vector<geometry_msgs::Pose3D>> Mstsp::solution_to_poses_stamped(Solution sol){
//    vector<vector<geometry_msgs::Pose3D>> poses;
//
//    for(auto route : sol.routes)
//    {
//        vector<geometry_msgs::PoseStamped> poseline;
//        for(auto i = 1u; i < route.size()-1; i++) {
//            auto segment_id = route[i];
//            Vector3d pylon0 = segments.at((segment_id/2)-1 ).at(0);
//            Vector3d pylon1 = segments.at((segment_id/2)-1 ).at(1);
//            geometry_msgs::PoseStamped pose_a;
//            geometry_msgs::PoseStamped pose_b;
//            if(segment_id % 2) {
//                pose_a.pose.position.x = pylon1.x();
//                pose_a.pose.position.y = pylon1.y();
//                pose_a.pose.position.z = pylon1.z();
//                pose_b.pose.position.x = pylon0.x();
//                pose_b.pose.position.y = pylon0.y();
//            } else {
//                pose_a.x = pylon0.x();
//                pose_a.y = pylon0.y();
//                pose_b.x = pylon1.x();
//                pose_b.y = pylon1.y();
//            }
//            poseline.push_back(pose_a);
//            poseline.push_back(pose_b);
//        }
//        poses.push_back(poseline);
//    }
//    return poses;
//}

std::vector<aerialcore_msgs::FlightPlan> Mstsp::solution_to_flight_plans(Solution sol) {
    std::vector<aerialcore_msgs::FlightPlan> plans_;
    for(auto route : sol.routes)
    {
        aerialcore_msgs::FlightPlan plan_;

        { // depot 0
            geometry_msgs::PoseStamped depot_;
            depot_.pose.position.x = depot_pos.x();
            depot_.pose.position.y = depot_pos.y();
            depot_.pose.position.z = depot_pos.z();
            plan_.poses.push_back(depot_);
            plan_.type.push_back(0);
        }

        for(auto i = 1u; i < route.size()-1; i++) {
            auto segment_id = route[i];
            Vector3d pylon0 = segments.at((segment_id/2)-1 ).at(0);
            Vector3d pylon1 = segments.at((segment_id/2)-1 ).at(1);
            geometry_msgs::PoseStamped pose_a;
            geometry_msgs::PoseStamped pose_b;
            if(segment_id % 2) {
                pose_a.pose.position.x = pylon1.x();
                pose_a.pose.position.y = pylon1.y();
                pose_a.pose.position.z = pylon1.z();
                pose_b.pose.position.x = pylon0.x();
                pose_b.pose.position.y = pylon0.y();
                pose_b.pose.position.z = pylon0.z();
                plan_.nodes.push_back(segment_id/2);
                plan_.nodes.push_back(segment_id/2-1);
            } else {
                pose_a.pose.position.x = pylon0.x();
                pose_a.pose.position.y = pylon0.y();
                pose_a.pose.position.z = pylon0.z();
                pose_b.pose.position.x = pylon1.x();
                pose_b.pose.position.y = pylon1.y();
                pose_b.pose.position.z = pylon1.z();
                plan_.nodes.push_back(segment_id/2-1);
                plan_.nodes.push_back(segment_id/2);
            }
            plan_.poses.push_back(pose_a);
            plan_.poses.push_back(pose_b);
            plan_.type.push_back(1);
            plan_.type.push_back(1);
        }

        { // depot 1
            geometry_msgs::PoseStamped depot_;
            depot_.pose.position.x = depot_pos.x();
            depot_.pose.position.y = depot_pos.y();
            depot_.pose.position.z = depot_pos.z();
            plan_.poses.push_back(depot_);
            plan_.type.push_back(3);
        }

        plans_.push_back(plan_);

    }
    return plans_;
}

