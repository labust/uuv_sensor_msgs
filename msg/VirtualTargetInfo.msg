# Custom message used for creating virtual target vessels needed for testing situational awarness algorithms

uint32 uuid                                 # A unique ID of the vessel.

float32 width                               # Size parameters of the vessel
float32 length

geometry_msgs/Point initial_position        # Initial position of the vessel
geometry_msgs/Point final_position          # Final position of the vessel
nav_msgs/Odometry odometry                  # Current odometry of the vessel

float64 velocity                            # Velocity of the vessel
float64 orientation                         # Orientation of the vessel in degrees, where 0° refers to the North