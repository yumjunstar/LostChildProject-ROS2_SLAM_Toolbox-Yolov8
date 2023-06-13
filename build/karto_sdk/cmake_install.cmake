# Install script for directory: /home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/src/slam_toolbox-foxy-devel/lib/karto_sdk

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/install/karto_sdk")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/" TYPE DIRECTORY FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/src/slam_toolbox-foxy-devel/lib/karto_sdk/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/libkartoSlamToolbox.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so"
         OLD_RPATH "/opt/ros/foxy/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libkartoSlamToolbox.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/environment" TYPE FILE FILES "/opt/ros/foxy/lib/python3.8/site-packages/ament_package/template/environment_hook/library_path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/environment" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/library_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/karto_sdk")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/karto_sdk")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/environment" TYPE FILE FILES "/opt/ros/foxy/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/environment" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/environment" TYPE FILE FILES "/opt/ros/foxy/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/environment" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/path.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/local_setup.bash")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/local_setup.sh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_environment_hooks/package.dsv")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_index/share/ament_index/resource_index/packages/karto_sdk")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/cmake" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_export_libraries/ament_cmake_export_libraries-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/cmake" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_export_include_directories/ament_cmake_export_include_directories-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/cmake" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_export_dependencies/ament_cmake_export_dependencies-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk/cmake" TYPE FILE FILES
    "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_core/karto_sdkConfig.cmake"
    "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/ament_cmake_core/karto_sdkConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/karto_sdk" TYPE FILE FILES "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/src/slam_toolbox-foxy-devel/lib/karto_sdk/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/yumjunstar/Desktop/YJW/RoboticsProgram/Project/LostChildProject-ROS2_SLAM_Toolbox-Yolov8/build/karto_sdk/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")