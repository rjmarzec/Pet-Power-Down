/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1B951818
/// @DnDArgument : "var" "global.titleselect"
/// @DnDArgument : "value" "3"
if(global.titleselect == 3)
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 77AE5F5B
	/// @DnDParent : 1B951818
	/// @DnDArgument : "soundid" "levelselect"
	/// @DnDSaveInfo : "soundid" "49914993-1663-414c-8e2f-a59444faef74"
	audio_stop_sound(levelselect);

	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 33996866
	/// @DnDParent : 1B951818
	/// @DnDArgument : "soundid" "instructions"
	/// @DnDSaveInfo : "soundid" "ebd8cf0e-dcdb-4a0a-911f-308bc8bbcd09"
	audio_stop_sound(instructions);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 52AD9F5C
	/// @DnDParent : 1B951818
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_settingss"
	/// @DnDSaveInfo : "spriteind" "46dd2ad1-272b-40d3-b419-7073365be18b"
	sprite_index = spr_settingss;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5431F84F
	/// @DnDParent : 1B951818
	/// @DnDArgument : "var" "playedsettingssound"
	if(playedsettingssound == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0508DC08
		/// @DnDParent : 5431F84F
		/// @DnDArgument : "soundid" "settings"
		/// @DnDSaveInfo : "soundid" "7ec393c8-0652-43ca-8822-98568c567ed5"
		audio_play_sound(settings, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 10B650E8
		/// @DnDParent : 5431F84F
		/// @DnDArgument : "soundid" "tic"
		/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_play_sound(tic, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27E57BAB
		/// @DnDParent : 5431F84F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "playedsettingssound"
		playedsettingssound = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 685C46ED
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3FA403F5
	/// @DnDParent : 685C46ED
	/// @DnDArgument : "spriteind" "spr_settings"
	/// @DnDSaveInfo : "spriteind" "05101f17-8836-4f6e-8544-21da82143b29"
	sprite_index = spr_settings;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26C5C76C
	/// @DnDParent : 685C46ED
	/// @DnDArgument : "var" "playedsettingssound"
	playedsettingssound = 0;
}