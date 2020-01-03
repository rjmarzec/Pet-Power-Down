/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D8C14F5
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1"
if(global.settingsselector > 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DACC508
	/// @DnDParent : 7D8C14F5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.settingsselector"
	global.settingsselector += -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2A90532C
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 081C0547
	/// @DnDParent : 2A90532C
	/// @DnDArgument : "expr" "3"
	/// @DnDArgument : "var" "global.settingsselector"
	global.settingsselector = 3;
}