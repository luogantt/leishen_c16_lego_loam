# Install script for directory: /home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver/msg" TYPE FILE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/msg/LslidarPacket.msg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver/srv" TYPE FILE FILES
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/lslidar_control.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/motor_control.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/remove_control.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/motor_speed.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/time_service.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/data_port.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/dev_port.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/data_ip.srv"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/srv/destination_ip.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver/cmake" TYPE FILE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/build/Lslidar_ROS1_driver/catkin_generated/installspace/lslidar_cx_driver-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/include/lslidar_cx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/share/roseus/ros/lslidar_cx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/share/common-lisp/ros/lslidar_cx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/share/gennodejs/ros/lslidar_cx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib/python3/dist-packages/lslidar_cx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib/python3/dist-packages/lslidar_cx_driver")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/build/Lslidar_ROS1_driver/catkin_generated/installspace/lslidar_cx_driver.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver/cmake" TYPE FILE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/build/Lslidar_ROS1_driver/catkin_generated/installspace/lslidar_cx_driver-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver/cmake" TYPE FILE FILES
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/build/Lslidar_ROS1_driver/catkin_generated/installspace/lslidar_cx_driverConfig.cmake"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/build/Lslidar_ROS1_driver/catkin_generated/installspace/lslidar_cx_driverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver" TYPE FILE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib/liblslidar_cx_input.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_input.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib/liblslidar_cx_driver.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so"
         OLD_RPATH "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib/liblslidar_cx_driver_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so"
         OLD_RPATH "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblslidar_cx_driver_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver" TYPE EXECUTABLE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib/lslidar_cx_driver/lslidar_cx_driver_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node"
         OLD_RPATH "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/lslidar_cx_driver/lslidar_cx_driver_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver" TYPE DIRECTORY FILES
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/launch"
    "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/rviz"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_cx_driver" TYPE FILE FILES "/home/lg/leishen_c16_lego_loam/leishen_c16_lego_loam/lslida_C16/src/Lslidar_ROS1_driver/nodelets.xml")
endif()

