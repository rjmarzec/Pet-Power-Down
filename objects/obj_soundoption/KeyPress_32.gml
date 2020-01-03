/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1915623F
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "value" "1"
if(global.settingsselector == 1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 163C66C0
	/// @DnDParent : 1915623F
	/// @DnDArgument : "var" "global.onoffvolume"
	if(global.onoffvolume == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 41EC8D33
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "soundid" "voiceoveroff"
		/// @DnDSaveInfo : "soundid" "913ace68-b90d-4b7e-b783-2dfa819bce3b"
		audio_play_sound(voiceoveroff, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 24332856
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "spriteind" "volumeon"
		/// @DnDSaveInfo : "spriteind" "e28255c8-32dd-4784-be47-21d834d46fe4"
		sprite_index = volumeon;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 7EFF2547
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "tic"
		/// @DnDSaveInfo : "sound" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_sound_gain(tic, 1, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FA9690D
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "global.onoffvolume"
		global.onoffvolume = 1;
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 5DADC648
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl1"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "eb241ddf-e7c5-4e66-a6ee-24c9b6f5b295"
		audio_sound_gain(lvl1, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 3D573DE6
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl2"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "54dee2b9-d59b-4478-b9c6-291bde3884c7"
		audio_sound_gain(lvl2, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 1BB89B16
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl3"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "bd6d70e7-d9e0-4b9c-b9d7-f817975fe344"
		audio_sound_gain(lvl3, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 1E41B901
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl4"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "7a298c23-bfc2-4615-a178-42c02e6d99b3"
		audio_sound_gain(lvl4, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 3A92C650
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl5"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "f24aba52-b50e-4465-a573-4460789ed5c9"
		audio_sound_gain(lvl5, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 79FB71F3
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl6"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "a3c72264-ff86-4e7c-a52f-ee1d45e7c29d"
		audio_sound_gain(lvl6, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 4F2899A4
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl7"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "c297cadd-4954-41f1-922e-758c41489103"
		audio_sound_gain(lvl7, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 2A464047
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl8"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "0e5f7bd3-b057-4131-8c5b-d4a09b003898"
		audio_sound_gain(lvl8, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 61254DC1
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl9"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "a369dea1-f662-4731-b7ef-56ed9f9592f0"
		audio_sound_gain(lvl9, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 0366F340
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl10"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "b2ed4144-3020-48fd-833f-9a982eee51a2"
		audio_sound_gain(lvl10, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 680A8BA9
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl11"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "f8204600-3240-458a-b377-f5b5c58fca71"
		audio_sound_gain(lvl11, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 04DF47ED
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl12"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "bcac1429-a928-4290-9843-86e9bd800b29"
		audio_sound_gain(lvl12, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 50D41CD7
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl13"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "02a0b7ae-1fba-40f7-8b29-07c226509bb2"
		audio_sound_gain(lvl13, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 50002CD4
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl14"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "efa52fc6-a707-4e3d-b963-c313105fb30c"
		audio_sound_gain(lvl14, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 4CB15205
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl15"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "14de3c3b-b6dd-4dc1-bd53-360bb8046f2c"
		audio_sound_gain(lvl15, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 3C74AA20
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl16"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "ad111c5e-cd89-4a37-9295-dda18975cea8"
		audio_sound_gain(lvl16, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 71C70DDC
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl17"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "5c49d267-c233-4174-9999-155ae4b1f6c0"
		audio_sound_gain(lvl17, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 5590099F
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl18"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "3848770c-80f4-47b0-a017-f8768ed58f7c"
		audio_sound_gain(lvl18, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 4D38A26B
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl19"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "732b6c70-4a3d-418b-991f-5e1662b09465"
		audio_sound_gain(lvl19, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 1FFB3D1C
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl20"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "ea5e948f-b22e-4a51-8329-ebd019b65f5a"
		audio_sound_gain(lvl20, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 6CF1E230
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl21"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "3f35fe78-94f2-4bf0-acca-4c0010c162a9"
		audio_sound_gain(lvl21, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 1C56ACC5
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl22"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "86c03040-1131-414f-8d38-49eeaabd7bb1"
		audio_sound_gain(lvl22, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 4F121659
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl23"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "e660bb18-656b-49bb-a081-1f796f941304"
		audio_sound_gain(lvl23, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 732E469B
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "lvl24"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "c778b92b-7dfb-4cf1-b090-24af91fa7b9a"
		audio_sound_gain(lvl24, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 25905B1D
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "levelselect"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "49914993-1663-414c-8e2f-a59444faef74"
		audio_sound_gain(levelselect, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 7C4E66CF
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "settings"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "7ec393c8-0652-43ca-8822-98568c567ed5"
		audio_sound_gain(settings, 0, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 001C211C
		/// @DnDParent : 163C66C0
		/// @DnDArgument : "sound" "instructions"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "ebd8cf0e-dcdb-4a0a-911f-308bc8bbcd09"
		audio_sound_gain(instructions, 0, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 739125CB
	/// @DnDParent : 1915623F
	else
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7C02ECC6
		/// @DnDParent : 739125CB
		/// @DnDArgument : "soundid" "voiceoveron"
		/// @DnDSaveInfo : "soundid" "e459a2ce-7d17-4bcf-9df9-f1bbd8a0a97c"
		audio_play_sound(voiceoveron, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37433423
		/// @DnDParent : 739125CB
		/// @DnDArgument : "var" "global.onoffvolume"
		global.onoffvolume = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7FF22C97
		/// @DnDParent : 739125CB
		/// @DnDArgument : "spriteind" "volumeoff"
		/// @DnDSaveInfo : "spriteind" "0212e006-e2c8-4708-aa5b-c5a5154a4f97"
		sprite_index = volumeoff;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 6C9D8318
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl1"
		/// @DnDSaveInfo : "sound" "eb241ddf-e7c5-4e66-a6ee-24c9b6f5b295"
		audio_sound_gain(lvl1, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 43FA5999
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl2"
		/// @DnDSaveInfo : "sound" "54dee2b9-d59b-4478-b9c6-291bde3884c7"
		audio_sound_gain(lvl2, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 5B5C271C
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl3"
		/// @DnDSaveInfo : "sound" "bd6d70e7-d9e0-4b9c-b9d7-f817975fe344"
		audio_sound_gain(lvl3, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 5B3916C6
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl4"
		/// @DnDSaveInfo : "sound" "7a298c23-bfc2-4615-a178-42c02e6d99b3"
		audio_sound_gain(lvl4, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 5B761934
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl5"
		/// @DnDSaveInfo : "sound" "f24aba52-b50e-4465-a573-4460789ed5c9"
		audio_sound_gain(lvl5, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 0D38AAA8
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl6"
		/// @DnDSaveInfo : "sound" "a3c72264-ff86-4e7c-a52f-ee1d45e7c29d"
		audio_sound_gain(lvl6, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 71706454
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl7"
		/// @DnDSaveInfo : "sound" "c297cadd-4954-41f1-922e-758c41489103"
		audio_sound_gain(lvl7, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 0FB57630
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl8"
		/// @DnDSaveInfo : "sound" "0e5f7bd3-b057-4131-8c5b-d4a09b003898"
		audio_sound_gain(lvl8, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 576F0F89
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl9"
		/// @DnDSaveInfo : "sound" "a369dea1-f662-4731-b7ef-56ed9f9592f0"
		audio_sound_gain(lvl9, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 40BD6D80
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl10"
		/// @DnDSaveInfo : "sound" "b2ed4144-3020-48fd-833f-9a982eee51a2"
		audio_sound_gain(lvl10, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 73B5E075
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl11"
		/// @DnDSaveInfo : "sound" "f8204600-3240-458a-b377-f5b5c58fca71"
		audio_sound_gain(lvl11, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 049D308E
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl12"
		/// @DnDSaveInfo : "sound" "bcac1429-a928-4290-9843-86e9bd800b29"
		audio_sound_gain(lvl12, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 65A0139A
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl13"
		/// @DnDSaveInfo : "sound" "02a0b7ae-1fba-40f7-8b29-07c226509bb2"
		audio_sound_gain(lvl13, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 2F78536F
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl14"
		/// @DnDSaveInfo : "sound" "efa52fc6-a707-4e3d-b963-c313105fb30c"
		audio_sound_gain(lvl14, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 54183EBA
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl15"
		/// @DnDSaveInfo : "sound" "14de3c3b-b6dd-4dc1-bd53-360bb8046f2c"
		audio_sound_gain(lvl15, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 74B9B1B6
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl16"
		/// @DnDSaveInfo : "sound" "ad111c5e-cd89-4a37-9295-dda18975cea8"
		audio_sound_gain(lvl16, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 3ACED592
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl17"
		/// @DnDSaveInfo : "sound" "5c49d267-c233-4174-9999-155ae4b1f6c0"
		audio_sound_gain(lvl17, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 7B33A7E7
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl18"
		/// @DnDSaveInfo : "sound" "3848770c-80f4-47b0-a017-f8768ed58f7c"
		audio_sound_gain(lvl18, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 669B300C
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl19"
		/// @DnDSaveInfo : "sound" "732b6c70-4a3d-418b-991f-5e1662b09465"
		audio_sound_gain(lvl19, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 224D39B6
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl20"
		/// @DnDSaveInfo : "sound" "ea5e948f-b22e-4a51-8329-ebd019b65f5a"
		audio_sound_gain(lvl20, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 5D3E6017
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl21"
		/// @DnDSaveInfo : "sound" "3f35fe78-94f2-4bf0-acca-4c0010c162a9"
		audio_sound_gain(lvl21, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 4F5951BB
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl22"
		/// @DnDSaveInfo : "sound" "86c03040-1131-414f-8d38-49eeaabd7bb1"
		audio_sound_gain(lvl22, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 515BBFEC
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl23"
		/// @DnDSaveInfo : "sound" "e660bb18-656b-49bb-a081-1f796f941304"
		audio_sound_gain(lvl23, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 7282B0CA
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "lvl24"
		/// @DnDSaveInfo : "sound" "c778b92b-7dfb-4cf1-b090-24af91fa7b9a"
		audio_sound_gain(lvl24, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 49EFB708
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "levelselect"
		/// @DnDSaveInfo : "sound" "49914993-1663-414c-8e2f-a59444faef74"
		audio_sound_gain(levelselect, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 12359B88
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "settings"
		/// @DnDSaveInfo : "sound" "7ec393c8-0652-43ca-8822-98568c567ed5"
		audio_sound_gain(settings, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 55F5F2EC
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "instructions"
		/// @DnDSaveInfo : "sound" "ebd8cf0e-dcdb-4a0a-911f-308bc8bbcd09"
		audio_sound_gain(instructions, 1, 0);
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1
		/// @DnDHash : 3742B7BB
		/// @DnDParent : 739125CB
		/// @DnDArgument : "sound" "tic"
		/// @DnDArgument : "volume" "0"
		/// @DnDSaveInfo : "sound" "3c3870ad-2a0b-431d-b7eb-fccc9578bd07"
		audio_sound_gain(tic, 0, 0);
	}
}