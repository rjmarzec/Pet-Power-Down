/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FE40B2D
/// @DnDArgument : "var" "global.levellock"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "22"
if(global.levellock > 22)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 661BE05E
	/// @DnDParent : 3FE40B2D
	instance_destroy();
}