/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1BAB877B
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "value" "2"
if(global.titleselect == 2)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 6A5557E5
	/// @DnDParent : 1BAB877B
	/// @DnDArgument : "soundid" "settings"
	/// @DnDSaveInfo : "soundid" "7ec393c8-0652-43ca-8822-98568c567ed5"
	audio_stop_sound(settings);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 62936C66
	/// @DnDParent : 1BAB877B
	/// @DnDArgument : "soundid" "levelselect"
	/// @DnDSaveInfo : "soundid" "49914993-1663-414c-8e2f-a59444faef74"
	audio_stop_sound(levelselect);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3BA00C9D
	/// @DnDParent : 1BAB877B
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_instructs"
	/// @DnDSaveInfo : "spriteind" "820a7dff-08df-4697-a520-bd5a81407648"
	sprite_index = spr_instructs;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3910092D
	/// @DnDParent : 1BAB877B
	/// @DnDArgument : "var" "playedinstructionsound"
	if(playedinstructionsound == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 39E1C310
		/// @DnDParent : 3910092D
		/// @DnDArgument : "soundid" "instructions"
		/// @DnDSaveInfo : "soundid" "ebd8cf0e-dcdb-4a0a-911f-308bc8bbcd09"
		audio_play_sound(instructions, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 47E0B8D8
		/// @DnDParent : 3910092D
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0AE0D300
		/// @DnDParent : 3910092D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playedinstructionsound"
		playedinstructionsound = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6A20D65B
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55D9C106
	/// @DnDParent : 6A20D65B
	/// @DnDArgument : "var" "playedinstructionsound"
	playedinstructionsound = 0;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 42ED7808
	/// @DnDParent : 6A20D65B
	/// @DnDArgument : "spriteind" "spr_instructions"
	/// @DnDSaveInfo : "spriteind" "3acf6481-3d17-41a5-838a-3c52faf0f031"
	sprite_index = spr_instructions;
	image_index = 0;
}