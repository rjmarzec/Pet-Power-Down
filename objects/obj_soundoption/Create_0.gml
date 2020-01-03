/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6CB221C1
/// @DnDArgument : "var" "soundoptionsoundplayed"
soundoptionsoundplayed = 0;

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 6BA0E6EA
/// @DnDArgument : "sound" "tic"
/// @DnDArgument : "volume" "0"
/// @DnDSaveInfo : "sound" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
audio_sound_gain(tic, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FF997CC
/// @DnDArgument : "var" "global.onoffvolume"
if(global.onoffvolume == 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 29BA393F
	/// @DnDParent : 0FF997CC
	/// @DnDArgument : "spriteind" "volumeoff"
	/// @DnDSaveInfo : "spriteind" "0212e006-e2c8-4708-aa5b-c5a5154a4f97"
	sprite_index = volumeoff;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 744A8669
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7DD29F3D
	/// @DnDParent : 744A8669
	/// @DnDArgument : "spriteind" "volumeon"
	/// @DnDSaveInfo : "spriteind" "e28255c8-32dd-4784-be47-21d834d46fe4"
	sprite_index = volumeon;
	image_index = 0;
}