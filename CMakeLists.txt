cmake_minimum_required(VERSION 2.8.3)
project(uuv_sensor_msgs)

find_package(catkin REQUIRED message_generation std_msgs geometry_msgs sensor_msgs)

## Declare ROS messages, services and actions ##
add_message_files(DIRECTORY msg)
generate_messages(
   DEPENDENCIES
   std_msgs
   geometry_msgs
   sensor_msgs
)

catkin_package()
