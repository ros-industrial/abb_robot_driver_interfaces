#-------------------------------------------------------------------------------
# Description:
#   The purpose of this message definition, is to represent a subset of states
#   of all (known) EGM communication channels.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Message fields
#-------------------------------------------------------------------------------
# Metadata.
std_msgs/Header header

# EGM channel states.
EGMChannelState[] egm_channels
