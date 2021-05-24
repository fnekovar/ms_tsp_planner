# ms-tsp-planner

Code repository for Multiple-Set TSP GRASP planner ROS interface.

##Cost estimation

The cost matrix used in planning of powerlines is estimated from UAV flight dynamic contraints.\\
Flight trajectories are estimated straight line polynomials with limits on maximum velocity and acceleration.\\
Yaw rate is used to account for turning between the lines, but the impact is negligible.

##Interface

Planning on powerline graphs specified as .yaml files can be executed for default configuration using:
```
rosservice call /ms_tsp_planner/plan_default
```
and for specific configuration using:
```
rosservice call /ms_tsp_planner/plan_config
```
if configuration file is located in './config' directory./
See the directory and overall file structure for configuration, graph and UAV specification.

##Dependencies

* [eigen]: `sudo apt-get install libeigen3-dev`
* [libconfig]: `sudo apt-get install libconfig++9v5`



