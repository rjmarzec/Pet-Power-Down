/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 6DF19902
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1
/// @DnDHash : 28092637
/// @DnDArgument : "sound" "instructionsfull"
/// @DnDSaveInfo : "sound" "a21fb915-b9e8-406c-acf5-f2bd3ef2063a"
audio_sound_gain(instructionsfull, 1, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1687F1BB
/// @DnDArgument : "soundid" "instructionsfull"
/// @DnDSaveInfo : "soundid" "a21fb915-b9e8-406c-acf5-f2bd3ef2063a"
audio_play_sound(instructionsfull, 0, 0);