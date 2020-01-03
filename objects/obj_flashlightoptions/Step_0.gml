/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C42E627
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "value" "2"
if(global.settingsselector == 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7438215F
	/// @DnDParent : 4C42E627
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "1"
	if(global.flashlightsettings == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2D51B6CE
		/// @DnDParent : 7438215F
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "flashlightbs"
		/// @DnDSaveInfo : "spriteind" "6eb8e83e-ddf9-4c7c-a820-72809e3f4ff0"
		sprite_index = flashlightbs;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7706EE43
		/// @DnDParent : 7438215F
		/// @DnDArgument : "var" "flashlightoptionssoundplayed"
		if(flashlightoptionssoundplayed == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 67DC6C9A
			/// @DnDParent : 7706EE43
			/// @DnDArgument : "soundid" "visualsettings"
			/// @DnDSaveInfo : "soundid" "c78f6d5b-8aa3-4305-9122-6d76c3d38117"
			audio_play_sound(visualsettings, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 2C251DBD
			/// @DnDParent : 7706EE43
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59E98C00
			/// @DnDParent : 7706EE43
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "flashlightoptionssoundplayed"
			flashlightoptionssoundplayed = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23BE01FB
	/// @DnDParent : 4C42E627
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "2"
	if(global.flashlightsettings == 2)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 66DF6D1C
		/// @DnDParent : 23BE01FB
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "darkmodes"
		/// @DnDSaveInfo : "spriteind" "c319c5aa-3346-47cf-b525-2ed2297d3519"
		sprite_index = darkmodes;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F3EF70C
		/// @DnDParent : 23BE01FB
		/// @DnDArgument : "var" "flashlightoptionssoundplayed"
		if(flashlightoptionssoundplayed == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 06D6D3CB
			/// @DnDParent : 7F3EF70C
			/// @DnDArgument : "soundid" "visualsettings"
			/// @DnDSaveInfo : "soundid" "c78f6d5b-8aa3-4305-9122-6d76c3d38117"
			audio_play_sound(visualsettings, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 7C008BDB
			/// @DnDParent : 7F3EF70C
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 720169EB
			/// @DnDParent : 7F3EF70C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "flashlightoptionssoundplayed"
			flashlightoptionssoundplayed = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15813CD0
	/// @DnDParent : 4C42E627
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "3"
	if(global.flashlightsettings == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 13DAE064
		/// @DnDParent : 15813CD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "sightmodes"
		/// @DnDSaveInfo : "spriteind" "d87f5c65-1ce6-4b58-b639-156b4ba8b921"
		sprite_index = sightmodes;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27F2B26E
		/// @DnDParent : 15813CD0
		/// @DnDArgument : "var" "flashlightoptionssoundplayed"
		if(flashlightoptionssoundplayed == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 33D18539
			/// @DnDParent : 27F2B26E
			/// @DnDArgument : "soundid" "visualsettings"
			/// @DnDSaveInfo : "soundid" "c78f6d5b-8aa3-4305-9122-6d76c3d38117"
			audio_play_sound(visualsettings, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 3C989A7C
			/// @DnDParent : 27F2B26E
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 695B9321
			/// @DnDParent : 27F2B26E
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "flashlightoptionssoundplayed"
			flashlightoptionssoundplayed = 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 436EAF6F
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34C0021A
	/// @DnDParent : 436EAF6F
	/// @DnDArgument : "var" "flashlightoptionssoundplayed"
	flashlightoptionssoundplayed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3992A53F
	/// @DnDParent : 436EAF6F
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "1"
	if(global.flashlightsettings == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 02A14E97
		/// @DnDParent : 3992A53F
		/// @DnDArgument : "spriteind" "flashlightb"
		/// @DnDSaveInfo : "spriteind" "efecdc22-e63f-4ec4-8778-c7bed910a45a"
		sprite_index = flashlightb;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71E90404
	/// @DnDParent : 436EAF6F
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "2"
	if(global.flashlightsettings == 2)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 15E198F6
		/// @DnDParent : 71E90404
		/// @DnDArgument : "spriteind" "darkmode"
		/// @DnDSaveInfo : "spriteind" "4daad804-2f6a-43c6-aa02-e61a74764002"
		sprite_index = darkmode;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49DF8F64
	/// @DnDParent : 436EAF6F
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "3"
	if(global.flashlightsettings == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2738CC43
		/// @DnDParent : 49DF8F64
		/// @DnDArgument : "spriteind" "sightmode"
		/// @DnDSaveInfo : "spriteind" "9fc81a97-17e4-4670-8d6c-2f376e5b7a6a"
		sprite_index = sightmode;
		image_index = 0;
	}
}