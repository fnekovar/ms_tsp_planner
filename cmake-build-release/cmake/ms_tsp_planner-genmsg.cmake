# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ms_tsp_planner: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iaerialcore_msgs:/home/nekovfra/workspace/src/aerialcore_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ms_tsp_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" NAME_WE)
add_custom_target(_ms_tsp_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ms_tsp_planner" "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" NAME_WE)
add_custom_target(_ms_tsp_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ms_tsp_planner" "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" NAME_WE)
add_custom_target(_ms_tsp_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ms_tsp_planner" "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" "geometry_msgs/Point:geometry_msgs/PoseStamped:geometry_msgs/Quaternion:aerialcore_msgs/FlightPlan:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_cpp(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_cpp(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nekovfra/workspace/src/aerialcore_msgs/msg/FlightPlan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ms_tsp_planner
)

### Generating Module File
_generate_module_cpp(ms_tsp_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ms_tsp_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ms_tsp_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ms_tsp_planner_generate_messages ms_tsp_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_cpp _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_cpp _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_cpp _ms_tsp_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ms_tsp_planner_gencpp)
add_dependencies(ms_tsp_planner_gencpp ms_tsp_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ms_tsp_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_eus(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_eus(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nekovfra/workspace/src/aerialcore_msgs/msg/FlightPlan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ms_tsp_planner
)

### Generating Module File
_generate_module_eus(ms_tsp_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ms_tsp_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ms_tsp_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ms_tsp_planner_generate_messages ms_tsp_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_eus _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_eus _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_eus _ms_tsp_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ms_tsp_planner_geneus)
add_dependencies(ms_tsp_planner_geneus ms_tsp_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ms_tsp_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_lisp(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_lisp(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nekovfra/workspace/src/aerialcore_msgs/msg/FlightPlan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ms_tsp_planner
)

### Generating Module File
_generate_module_lisp(ms_tsp_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ms_tsp_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ms_tsp_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ms_tsp_planner_generate_messages ms_tsp_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_lisp _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_lisp _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_lisp _ms_tsp_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ms_tsp_planner_genlisp)
add_dependencies(ms_tsp_planner_genlisp ms_tsp_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ms_tsp_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_nodejs(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_nodejs(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nekovfra/workspace/src/aerialcore_msgs/msg/FlightPlan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ms_tsp_planner
)

### Generating Module File
_generate_module_nodejs(ms_tsp_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ms_tsp_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ms_tsp_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ms_tsp_planner_generate_messages ms_tsp_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_nodejs _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_nodejs _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_nodejs _ms_tsp_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ms_tsp_planner_gennodejs)
add_dependencies(ms_tsp_planner_gennodejs ms_tsp_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ms_tsp_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_py(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner
)
_generate_srv_py(ms_tsp_planner
  "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/nekovfra/workspace/src/aerialcore_msgs/msg/FlightPlan.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner
)

### Generating Module File
_generate_module_py(ms_tsp_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ms_tsp_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ms_tsp_planner_generate_messages ms_tsp_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanDefault.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_py _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/PlanConfig.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_py _ms_tsp_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nekovfra/git/ms_tsp_planner/srv/ConfigToFlightPlans.srv" NAME_WE)
add_dependencies(ms_tsp_planner_generate_messages_py _ms_tsp_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ms_tsp_planner_genpy)
add_dependencies(ms_tsp_planner_genpy ms_tsp_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ms_tsp_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ms_tsp_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ms_tsp_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ms_tsp_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ms_tsp_planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET aerialcore_msgs_generate_messages_cpp)
  add_dependencies(ms_tsp_planner_generate_messages_cpp aerialcore_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ms_tsp_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ms_tsp_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ms_tsp_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ms_tsp_planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET aerialcore_msgs_generate_messages_eus)
  add_dependencies(ms_tsp_planner_generate_messages_eus aerialcore_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ms_tsp_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ms_tsp_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ms_tsp_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ms_tsp_planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET aerialcore_msgs_generate_messages_lisp)
  add_dependencies(ms_tsp_planner_generate_messages_lisp aerialcore_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ms_tsp_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ms_tsp_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ms_tsp_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ms_tsp_planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET aerialcore_msgs_generate_messages_nodejs)
  add_dependencies(ms_tsp_planner_generate_messages_nodejs aerialcore_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ms_tsp_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ms_tsp_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ms_tsp_planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET aerialcore_msgs_generate_messages_py)
  add_dependencies(ms_tsp_planner_generate_messages_py aerialcore_msgs_generate_messages_py)
endif()
