# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;dvs_msgs;std_msgs;dynamic_reconfigure;camera_info_manager;nodelet".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldvs_ros_driver_nodelet".split(';') if "-ldvs_ros_driver_nodelet" != "" else []
PROJECT_NAME = "dvs_ros_driver"
PROJECT_SPACE_DIR = "/home/autoware/shared_dir/catkin_make/install"
PROJECT_VERSION = "0.0.0"
