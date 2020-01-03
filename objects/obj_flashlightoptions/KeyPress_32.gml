/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C691BBA
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "value" "2"
if(global.settingsselector == 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D34C6DD
	/// @DnDParent : 0C691BBA
	/// @DnDArgument : "var" "global.flashlightsettings"
	/// @DnDArgument : "value" "1"
	if(global.flashlightsettings == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75DE5C19
		/// @DnDParent : 5D34C6DD
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "var" "global.flashlightsettings"
		global.flashlightsettings = 2;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3EF90213
		/// @DnDParent : 5D34C6DD
		/// @DnDArgument : "soundid" "darkmoadesound"
		/// @DnDSaveInfo : "soundid" "2ea11fd6-7e45-4bfd-bfa4-aa977be0c1fc"
		audio_play_sound(darkmoadesound, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3B22DCF3
	/// @DnDParent : 0C691BBA
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29B60511
		/// @DnDParent : 3B22DCF3
		/// @DnDArgument : "var" "global.flashlightsettings"
		/// @DnDArgument : "value" "2"
		if(global.flashlightsettings == 2)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2D369AC2
			/// @DnDParent : 29B60511
			/// @DnDArgument : "expr" "3"
			/// @DnDArgument : "var" "global.flashlightsettings"
			global.flashlightsettings = 3;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 61F975D0
			/// @DnDParent : 29B60511
			/// @DnDArgument : "soundid" "sightmodesound"
			/// @DnDSaveInfo : "soundid" "67316dcd-aa00-4392-982f-e999da624fee"
			audio_play_sound(sightmodesound, 0, 0);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 6921D95A
		/// @DnDParent : 3B22DCF3
		else
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3230724E
			/// @DnDParent : 6921D95A
			/// @DnDArgument : "var" "global.flashlightsettings"
			/// @DnDArgument : "value" "3"
			if(global.flashlightsettings == 3)
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7E436BCF
				/// @DnDParent : 3230724E
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "var" "global.flashlightsettings"
				global.flashlightsettings = 1;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 63236A44
				/// @DnDParent : 3230724E
				/// @DnDArgument : "soundid" "flashlightmodesound"
				/// @DnDSaveInfo : "soundid" "059eceda-cd04-49d8-b093-320de7a0bbbc"
				audio_play_sound(flashlightmodesound, 0, 0);
			}
		}
	}
}