/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0B885545
/// @DnDArgument : "value" "1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "titleselect"
global.titleselect += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E13319B
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "3"
if(global.titleselect > 3)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 747AAB05
	/// @DnDParent : 3E13319B
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "titleselect"
	global.titleselect = 1;
}