[//]: # (Image References)
[image_1]: ./images/voxel_downsampled.pcd
[image_2]: ./images/pass_through_filtered.pcd
[image_3]: ./images/extracted_outliers.pcd
[image_4]: ./images/extracted_inliers.pcd
# HomeServiceRobot
### The goal of this project is to program a robot that can autonomously map an environment and pick up and drop virtual objects.

  #### The Home Service Robot Project is composed of multiple steps as follows:
      1. Build a real-wrold envieonment in simulation using Gazebo
      2. Interface SLAM with a wall followe node to autonomously map an environment.
      3. After building a map, reach multiple goals and orient itself with respect to them using ROS navigation stack.
      4. Model virtual object with markers and deploy them with ROS.
  
  ### Project Setup
    Udacity GPU workspace was used to create the project
    Update system: sudo apt-get update

    This project utilizes the following ROS packages.
    gmapping turtlebot_teleop turtlebot_rviz_launchers turtlebot_gazebo
    
  #### Create workspace and Install Packages
    $ mkdir -p ~/catkin_ws/src
    $ cd ~/catkin_ws/src
    $ catkin_init_workspace
    $ cd ~/catkin_ws
    $ catkin_make
    Clone the following repositories to catkin_ws/src:

    $ cd ~/catkin_ws/src
    $ git clone https://github.com/ros-perception/slam_gmapping.git
    $ git clone https://github.com/turtlebot/turtlebot.git
    $ git clone https://github.com/turtlebot/turtlebot_interactions.git
    $ git clone https://github.com/turtlebot/turtlebot_simulator.git
    $ cd ~/catkin_ws/
    $ source devel/setup.bash
    $ rosdep -i install gmapping
    #All required rosdeps installed successfully
    $ rosdep -i install turtlebot_teleop
    #All required rosdeps installed successfully
    $ rosdep -i install turtlebot_rviz_launchers
    #All required rosdeps installed successfully
    $ rosdep -i install turtlebot_gazebo
    #All required rosdeps installed successfully
    $ catkin_make
    $ source devel/setup.bash

  #### Copy the content of this directory into /catkin_ws/src
    Catkin workspace should look something like this:
    catkin_ws/src
        ├── slam_gmapping                  # gmapping_demo.launch file                   
        │   ├── gmapping
        │   ├── ...
        ├── turtlebot                      # keyboard_teleop.launch file
        │   ├── turtlebot_teleop
        │   ├── ...
        ├── turtlebot_interactions         # view_navigation.launch file      
        │   ├── turtlebot_rviz_launchers
        │   ├── ...
        ├── turtlebot_simulator            # turtlebot_world.launch file 
        │   ├── turtlebot_gazebo
        │   ├── ...
        ├── Worlds                          # world files
        │   ├── ...
        ├── ShellScripts                   # shell scripts files
        │   ├── ...
        ├──RvizConfig                      # rviz configuration files
        │   ├── ...
        ├──wall_follower                   # wall_follower C++ node
        │   ├── src/wall_follower.cpp
        │   ├── ...
        ├──pick_objects                    # pick_objects C++ node
        │   ├── src/pick_objects.cpp
        │   ├── ...
        ├──add_markers                     # add_marker C++ node
        │   ├── src/add_markers.cpp
        │   ├── ...
        └──
    Source and build the project:

    $ cd ~/catkin_ws
    $ source devel/setup.bash
    $ catkin_make
    Run ./src/ShellScripts/home_service.sh in ShellScripts directory to deploy the home service robot.

### Test the home service robot in simulation
    An object is marked or displayed at pickup position and the robot will navigate to the object location after waiting for 5 sec.
    The object is removed or unmarked from the pickup position to immitate that it is being picked up.
    The robot moves back to the drop off location and the object reappears at the drop off location.
####  Images

The map created by using slam_gmapping package
![Map][image_1]

The object marker appears 
![Pass Through Filter][image_2]

The robot moves to the pickup location and object disappears
![Table from extract indices][image_3]

The robot moves to the drop off location and the object appears there
![Voxel Grid Filtered][image_4]

#### Results
