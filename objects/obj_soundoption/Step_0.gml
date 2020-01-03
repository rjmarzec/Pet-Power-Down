/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C42E627
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "value" "1"
if(global.settingsselector == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 15813CD0
	/// @DnDParent : 4C42E627
	/// @DnDArgument : "var" "global.onoffvolume"
	if(global.onoffvolume == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 13DAE064
		/// @DnDParent : 15813CD0
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "volumeoffs"
		/// @DnDSaveInfo : "spriteind" "57307956-05fe-4ae4-8a05-3bd453715bf5"
		sprite_index = volumeoffs;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27F2B26E
		/// @DnDParent : 15813CD0
		/// @DnDArgument : "var" "soundoptionsoundplayed"
		if(soundoptionsoundplayed == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 33D18539
			/// @DnDParent : 27F2B26E
			/// @DnDArgument : "soundid" "volume"
			/// @DnDSaveInfo : "soundid" "83b0bf3d-a0df-4a8c-b557-d5567b97e135"
			audio_play_sound(volume, 0, 0);
		
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
			/// @DnDArgument : "var" "soundoptionsoundplayed"
			soundoptionsoundplayed = 1;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3FBE50BC
	/// @DnDParent : 4C42E627
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3F855F47
		/// @DnDParent : 3FBE50BC
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "volumeons"
		/// @DnDSaveInfo : "spriteind" "133bea16-0b57-4d71-a497-349086a20aa7"
		sprite_index = volumeons;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A75456C
		/// @DnDParent : 3FBE50BC
		/// @DnDArgument : "var" "soundoptionsoundplayed"
		if(soundoptionsoundplayed == 0)
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 6D643A92
			/// @DnDParent : 5A75456C
			/// @DnDArgument : "soundid" "volume"
			/// @DnDSaveInfo : "soundid" "83b0bf3d-a0df-4a8c-b557-d5567b97e135"
			audio_play_sound(volume, 0, 0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 2CC7D0F0
			/// @DnDParent : 5A75456C
			/// @DnDArgument : "soundid" "tic"
			/// @DnDSaveInfo : "soundid" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
			audio_play_sound(tic, 0, 0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2707F465
			/// @DnDParent : 5A75456C
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "soundoptionsoundplayed"
			soundoptionsoundplayed = 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 179AA1BB
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02B32365
	/// @DnDParent : 179AA1BB
	/// @DnDArgument : "var" "soundoptionsoundplayed"
	soundoptionsoundplayed = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53864AB7
	/// @DnDParent : 179AA1BB
	/// @DnDArgument : "var" "global.onoffvolume"
	if(global.onoffvolume == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 05C6B9AB
		/// @DnDParent : 53864AB7
		/// @DnDArgument : "spriteind" "volumeoff"
		/// @DnDSaveInfo : "spriteind" "0212e006-e2c8-4708-aa5b-c5a5154a4f97"
		sprite_index = volumeoff;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 73441A8C
	/// @DnDParent : 179AA1BB
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2E13FD6C
		/// @DnDParent : 73441A8C
		/// @DnDArgument : "spriteind" "volumeon"
		/// @DnDSaveInfo : "spriteind" "e28255c8-32dd-4784-be47-21d834d46fe4"
		sprite_index = volumeon;
		image_index = 0;
	}
}