/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 54889B7F
/// @DnDArgument : "var" "global.flashlightsettings"
/// @DnDArgument : "value" "1"
if(global.flashlightsettings == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5CDB3619
	/// @DnDParent : 54889B7F
	/// @DnDArgument : "spriteind" "spr_darkness"
	/// @DnDSaveInfo : "spriteind" "2fe54911-8cdf-44bc-8396-b57102182511"
	sprite_index = spr_darkness;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E90BBCC
/// @DnDArgument : "var" "global.flashlightsettings"
/// @DnDArgument : "value" "2"
if(global.flashlightsettings == 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 0C37096E
	/// @DnDParent : 2E90BBCC
	/// @DnDArgument : "imageind" "1"
	/// @DnDArgument : "spriteind" "spr_darkness"
	/// @DnDSaveInfo : "spriteind" "2fe54911-8cdf-44bc-8396-b57102182511"
	sprite_index = spr_darkness;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3F77FF2F
/// @DnDArgument : "var" "global.flashlightsettings"
/// @DnDArgument : "value" "3"
if(global.flashlightsettings == 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3C1F10D0
	/// @DnDParent : 3F77FF2F
	/// @DnDArgument : "imageind" "2"
	/// @DnDArgument : "spriteind" "spr_darkness"
	/// @DnDSaveInfo : "spriteind" "2fe54911-8cdf-44bc-8396-b57102182511"
	sprite_index = spr_darkness;
	image_index = 2;
}