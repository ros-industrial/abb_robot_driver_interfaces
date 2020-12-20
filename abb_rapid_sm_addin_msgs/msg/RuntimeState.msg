#-------------------------------------------------------------------------------
# Description:
#   The purpose of this message definition, is to represent the runtime states
#   of all (known) RobotWare "StateMachine Add-In" RAPID instances.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Message fields
#-------------------------------------------------------------------------------
# Metadata.
std_msgs/Header header

# "StateMachine Add-In" instances.
StateMachineState[] state_machines
