execute_process(COMMAND "/home/autoware/shared_dir/catkin_make/build/dvs_calibration_gui/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/autoware/shared_dir/catkin_make/build/dvs_calibration_gui/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
