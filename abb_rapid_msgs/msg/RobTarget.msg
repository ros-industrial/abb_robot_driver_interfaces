#-------------------------------------------------------------------------------
# Description:
#   The purpose of this message definition, is to represent the
#   RAPID data type "robtarget" (position data).
#
# Note:
#   Please see the "Technical reference manual - RAPID Instructions,
#   Functions and Data types" for more details.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Message fields
#-------------------------------------------------------------------------------
# The position (x, y, and z) of the tool center point expressed in mm.
#
# The position is specified in relation to the current object coordinate system,
# including program displacement.
#
# If no work object is specified then this is the world coordinate system.
Pos trans

# The orientation of the tool, expressed in the
# form of a quaternion (q1, q2, q3, and q4).
#
# The orientation is specified in relation to the current
# object coordinate system including program displacement.
#
# If no work object is specified then this is the world coordinate system.
Orient rot

# The axis configuration of the robot (cf1, cf4, cf6, and cfx).
#
# This is defined in the form of the current quarter
# revolution of axis 1, axis 4, and axis 6.
#
# The first positive quarter revolution 0 to 90° is defined as 0.
#
# The meaning of the component cfx is dependent on robot type.
ConfData robconf

# The position of the additional axes.
ExtJoint extax
