/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7B076ACB
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "titleselect"
global.titleselect += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 01116742
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(global.titleselect < 1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 32D1803A
	/// @DnDParent : 01116742
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "var" "titleselect"
	global.titleselect = 3;
}