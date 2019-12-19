## Based on: 
## 1. UUV Simulator (https://github.com/uuvsimulator/uuv_simulator)
## 2. Marine ROS Conventions Discussion (https://github.com/udgcirs/marine_ros_conventions_discussion)
## This is a message to hold data from a Doppler Velocity Logger (DVL).
## 
## Notes:
##   1. Unknown covariance should be filled with zeros.
##   2. Select the velocity reference.
##   3. Invalid velocity measurements should not publish this message.

Header header

# Measured velocity [m/s] in header.frame_id
geometry_msgs/Vector3 velocity
# Row major, xyz axes
float64[9] velocity_covariance

# Altitude from bottom in header.frame_id
float64 altitude
float64 altitude_covariance

# Instrument reference data
uint8 VELOCITY_REFERENCE_UNKNOWN = 0
uint8 VELOCITY_REFERENCE_WATER = 1
uint8 VELOCITY_REFERENCE_BOTTOM = 2

uint8 velocity_reference
