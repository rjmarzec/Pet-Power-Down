/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 663B7C64
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "3"
if(global.settingsselector < 3)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5355BDFB
	/// @DnDParent : 663B7C64
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.settingsselector"
	global.settingsselector += 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7DAC41F4
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 41952589
	/// @DnDParent : 7DAC41F4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "global.settingsselector"
	global.settingsselector = 1;
}