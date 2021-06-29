#include "mstsp.h"
#include <ros/ros.h>
#include <geometry_msgs/Pose2D.h>
#include <geometry_msgs/PoseStamped.h>
#include <filesystem>
#include "ms_tsp_planner/PlanDefault.h"
#include "ms_tsp_planner/PlanConfig.h"
#include "aerialcore_msgs/FlightPlan.h"
#include "ms_tsp_planner/ConfigToFlightPlans.h"
#include "solution.h"

//bool plan_default(ms_tsp_planner::PlanDefault::Request &req, ms_tsp_planner::PlanDefault::Response &res) {
//    // default settings
//    string config_name = "default.yaml";
//    Mstsp mstsp = Mstsp();
//    mstsp.read_config(config_name);
//
//    Solution sol = mstsp.execute();
//
//    std::vector<std::vector<geometry_msgs::PoseStamped>> poses = mstsp.solution_to_poses(sol);
//
//    for (auto route : poses) {
//        res.poses.insert(res.poses.end(),route.begin(),route.end());
//        res.lengths.push_back(route.size());
//    }
//    return true;
//}

//bool plan_config(ms_tsp_planner::PlanConfig::Request &req, ms_tsp_planner::PlanConfig::Response &res) {
//    string config_name = req.configFile;
//    Mstsp mstsp = Mstsp();
//    mstsp.read_config(config_name);
//    Solution sol = mstsp.execute();
//
//    std::vector<std::vector<geometry_msgs::PoseStamped>> poses = mstsp.solution_to_poses(sol);
//
//    for (auto route : poses) {
//        res.poses.insert(res.poses.end(),route.begin(),route.end());
//        res.lengths.push_back(route.size());
//    }
//    return true;
//}
//
//
bool config_flight(ms_tsp_planner::ConfigToFlightPlans::Request &req, ms_tsp_planner::ConfigToFlightPlans::Response &res) {
    string config_name = req.configFile;
    Mstsp mstsp = Mstsp();
    mstsp.read_config(config_name);
    Solution sol = mstsp.execute();
    res.plans = mstsp.solution_to_flight_plans(sol);
    return true;
}

int main(int argc, char *argv[]) {
    ros::init(argc, argv, "mstsp_planner_service");
    ros::NodeHandle nh;
//    ros::ServiceServer serviceDefault = nh.advertiseService("/ms_tsp_planner/plan_default", plan_default);
//    ros::ServiceServer serviceConfig = nh.advertiseService("/ms_tsp_planner/plan_config", plan_config);
    ros::ServiceServer serviceConfigToFlightPlan = nh.advertiseService("/ms_tsp_planner/config_to_flight_plan", config_flight);

    ROS_INFO("MS-TSP planner service initialized.");
    ros::spin();
    return 0;
}
