execute_process(COMMAND "/home/lab/ros_ws/build/intera_sdk/intera_interface/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lab/ros_ws/build/intera_sdk/intera_interface/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
