#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/autoware/shared_dir/catkin_make/src/rpg_dvs_ros/dvs_calibration_gui"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/autoware/shared_dir/catkin_make/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/autoware/shared_dir/catkin_make/install/lib/python2.7/dist-packages:/home/autoware/shared_dir/catkin_make/build/dvs_calibration_gui/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/autoware/shared_dir/catkin_make/build/dvs_calibration_gui" \
    "/usr/bin/python2" \
    "/home/autoware/shared_dir/catkin_make/src/rpg_dvs_ros/dvs_calibration_gui/setup.py" \
     \
    build --build-base "/home/autoware/shared_dir/catkin_make/build/dvs_calibration_gui" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/autoware/shared_dir/catkin_make/install" --install-scripts="/home/autoware/shared_dir/catkin_make/install/bin"
