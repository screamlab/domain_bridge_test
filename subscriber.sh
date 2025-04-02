#!/bin/bash

docker run -it --rm \
    -e ROS_DOMAIN_ID=2 \
    --net bridge \
    -v ./config.yaml:/root/config.yaml \
    registry.screamtrumpet.csie.ncku.edu.tw/pros_images/pros_base_image:latest \
    bash -c "ros2 run domain_bridge domain_bridge /root/config.yaml & sleep 1 && ros2 topic echo /test"
