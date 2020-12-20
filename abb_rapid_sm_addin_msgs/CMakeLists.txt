cmake_minimum_required(VERSION 3.9.1)

########################################################################################################################
# Metadata
########################################################################################################################
# Read the package manifest.
file(READ "${CMAKE_CURRENT_SOURCE_DIR}/package.xml" package_xml_str)

# Extract project name.
if(NOT package_xml_str MATCHES "<name>([A-Za-z0-9_]+)</name>")
  message(FATAL_ERROR "Could not parse project name from package manifest (aborting)")
else()
  set(extracted_name ${CMAKE_MATCH_1})
endif()

# Extract project version.
if(NOT package_xml_str MATCHES "<version>([0-9]+.[0-9]+.[0-9]+)</version>")
  message(FATAL_ERROR "Could not parse project version from package manifest (aborting)")
else()
  set(extracted_version ${CMAKE_MATCH_1})
endif()

########################################################################################################################
# CMake project
########################################################################################################################
project(${extracted_name} VERSION ${extracted_version})

#===========================================================
# Dependencies
#===========================================================
#-----------------------------
# Catkin packages
#-----------------------------
find_package(catkin
  REQUIRED COMPONENTS
    abb_rapid_msgs
    message_generation
    std_msgs
)

#===========================================================
# Generate ROS interfaces
#===========================================================
add_message_files(
  FILES
    EGMActivateSettings.msg
    EGMRunSettings.msg
    EGMSettings.msg
    EGMSetupSettings.msg
    EGMStopSettings.msg
    RuntimeState.msg
    StateMachineState.msg
)

add_service_files(
  FILES
    GetEGMSettings.srv
    SetEGMSettings.srv
    SetRAPIDRoutine.srv
    SetSGCommand.srv
)

generate_messages(
  DEPENDENCIES
    abb_rapid_msgs
    std_msgs
)

#===========================================================
# Catkin package specific configurations
#===========================================================
catkin_package(
  CATKIN_DEPENDS
    abb_rapid_msgs
    message_runtime
    std_msgs
)
