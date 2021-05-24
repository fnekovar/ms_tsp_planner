cmake_minimum_required(VERSION 3.1.2)
project(ms_tsp_planner)

set(CMAKE_MODULE_PATH               "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
set(CMAKE_CXX_FLAGS                 "${CMAKE_CXX_FLAGS} -std=c++17 -DIL_STD -m64 -Werror")
set(CMAKE_CXX_FLAGS_DEBUG           "${CMAKE_CXX_FLAGS_DEBUG} -O0 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE         "${CMAKE_CXX_FLAGS_RELEASE} -DNDEBUG -O3 -flto")
set(CMAKE_INCLUDE_SYSTEM_FLAG_CXX   "-isystem ")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY  "${CMAKE_CURRENT_SOURCE_DIR}/build")
set(LINKER_OPTIONS                  -flto -Wl,--no-as-needed)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)


find_package (Eigen3 3.3 REQUIRED NO_MODULE)
set(Eigen_INCLUDE_DIRS ${EIGEN3_INCLUDE_DIRS})
set(Eigen_LIBRARIES ${Eigen_LIBRARIES})


find_package(catkin REQUIRED COMPONENTS
        roscpp
        rospy
        tf
        roslaunch
        roslib
        geometry_msgs
        std_msgs
        message_generation
        )

include_directories(PUBLIC include)
include_directories(
        ${catkin_INCLUDE_DIRS}
        ${Eigen_INCLUDE_DIRS}
)

set(SOURCE_FILES
        src/target.h
        src/target_shift.h
        src/solution.h
        src/solver_grasp.cpp
        src/solver_grasp.h
        src/insertion.h
        src/main.cpp
        src/uav_agent.h
        src/mstsp.cpp
        src/mstsp.h)

add_service_files(FILES
  PlanDefault.srv
  PlanConfig.srv)
generate_messages(DEPENDENCIES std_msgs geometry_msgs)
catkin_package(CATKIN_DEPENDS roscpp message_runtime roslib std_msgs geometry_msgs DEPENDS Eigen)

add_executable(mstsp
        ${SOURCE_FILES})
# cmake wont create messages without this line
add_dependencies(mstsp ${PROJECT_NAME}_generate_messages_cpp)

target_link_libraries (mstsp
        ${Eigen_LIBRARIES}
        ${catkin_LIBRARIES}
        config++)

