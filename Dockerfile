FROM osrf/ros:humble-desktop

SHELL ["/bin/bash", "-c"]

# Setup system
RUN sudo apt update -y && sudo apt upgrade -y && apt-get install -y sudo \
libx11-xcb1 \
libgl1-mesa-glx \
libxkbcommon-x11-0 \
&& rm -rf /var/lib/apt/lists/*

WORKDIR /home

RUN mkdir -p ros_ws && cd ros_ws && mkdir -p src 
RUN chmod -R 777 ros_ws
RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc