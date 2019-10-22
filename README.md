# HomeServiceRobot
### The goal of this project is to program a robot that can autonomously map an environment and pick up and drop virtual objects.

  ### The Home Service Robot Project is composed of multiple steps as follows:
      1. Build a real-wrold envieonment in simulation using Gazebo
      2. Interface SLAM with a wall followe node to autonomously map an environment.
      3. After building a map, reach multiple goals and orient itself with respect to them using ROS navigation stack.
      4. Model virtual object with markers and deploy them with ROS.
  
  ### Udacity GPU workspace was used to create the project .
    Project setup
    Update system: sudo apt-get update

    Install the ROS navigation stack: sudo apt-get install ros-kinetic-navigation

    Create catkin workspace:

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
    Install package dependencies with rosdep install [package-name]

    Copy content of this repository to catkin_ws/src

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
        ├── World                          # world files
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
    Run ./home_service.sh in ShellScripts directory to deploy the home service robot.
  ### The following official ROS packages are used 
