//
// Created by mrs on 14.12.20.
//

#ifndef MSTSP_H
#define MSTSP_H

#include "solver_grasp.h"
#include <iostream>
#include "uav_agent.h"
#include <Eigen/Eigen>
#include <fstream>
#include <ros/ros.h>
#include <ros/package.h>
#include <libconfig.h++>
#include <geometry_msgs/PoseStamped.h>
#include "aerialcore_msgs/FlightPlan.h"


using namespace std;
using namespace Eigen;
using namespace libconfig;

class Mstsp {
private:
    Solver_Grasp solver;
    UavVector uavs;
    int n_agents;
    int max_pylon_distance;
    int max_flight_time;
    int grasp_runs;
    double v_max_global;
    double v_insp_global;
    double a_max_global;
    double yaw_max_global;
    Vector3d depot_pos;
    std::vector<std::vector<Vector3d>> segments;
    Solution solution;
public:
    Mstsp() {}
    void process_data();
    void read_config(std::string filepath);
    void read_yaml_graph_data(std::string filepath);
    void read_yaml_uav_data(std::string filepath);
    void read_yaml_grasp_data(std::string filepath);
    void write_csv(string filename, Solution sol);
//    vector<vector<geometry_msgs::PoseStamped>> solution_to_poses_stamped(Solution sol);
    std::vector<aerialcore_msgs::FlightPlan> solution_to_flight_plans(Solution sol);


    Solution execute();
};

#endif
