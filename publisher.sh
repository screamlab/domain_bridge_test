#!/bin/bash

docker run -it --rm \
    -e ROS_DOMAIN_ID=1 \
    --net bridge \
    registry.screamtrumpet.csie.ncku.edu.tw/pros_images/pros_base_image:latest \
    ros2 topic pub /test std_msgs/msg/Int32 "{data: 123}"
