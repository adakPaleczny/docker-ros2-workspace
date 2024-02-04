# Docker ROS2 with shared workspace

## About setup
This Docker exist to create a workspace with shared files to build ROS2 humble projects inside docker. All files will be in ros_ws workspace and building it will happen inside Docker. Everythink what is built inside Docker will created in ros_ws folder.

## How to run?
### Docker
Create foler *ros_ws*:
```bash
mkdir ros_ws
```
To run docker-compose execute inside:
```bash
docker compose up
```
or with building
```bash
docker compose up --build
```

### Editing code in Visual Studio Code:
It is possible to open code from Docker inside vs code. You should add [Remote Development](https://code.visualstudio.com/docs/remote/remote-overview). After running docker compose you can open files using *Command Palette* and run *Remote-Containers*: **Attach to Running Container...** and choose *ros2-constainer*. 

## Possible issue:
To run Rviz and all visual applications it may be required to execute this command:
``` bash
xhost +
```