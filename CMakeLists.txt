cmake_minimum_required(VERSION 3.5)

project(uuv_sensor_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic")
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(rclpy REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(nav_msgs REQUIRED)

set(msg_files
	"msg/AcousticModemPayload.msg"
	"msg/AcousticModemRequest.msg"
	"msg/AcousticModemRange.msg"
	"msg/AISPositionReport.msg"
	"msg/Depth.msg"
	"msg/DVL.msg"
	"msg/ImagingSonarInfo.msg"
	"msg/VirtualTargetInfo.msg"
	"msg/VirtualTargetTracks.msg"
)

find_package(rosidl_default_generators REQUIRED)


rosidl_generate_interfaces(${PROJECT_NAME}
	${msg_files}
	DEPENDENCIES
	builtin_interfaces
	sensor_msgs
	std_msgs
	nav_msgs
	rosidl_default_generators
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()