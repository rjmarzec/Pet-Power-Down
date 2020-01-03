/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 42484E90
/// @DnDArgument : "sound" "menusong"
/// @DnDArgument : "pitch" ".5"
/// @DnDSaveInfo : "sound" "5cb3d2bd-f133-406b-beb0-fc7e6333b67b"
audio_sound_pitch(menusong, .5);

/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
/// @DnDVersion : 1
/// @DnDHash : 0BCE058C
/// @DnDArgument : "sound" "title"
/// @DnDArgument : "pitch" ".5"
/// @DnDSaveInfo : "sound" "6f4ed47c-2e31-4d97-9cd0-69ad215e8f36"
audio_sound_pitch(title, .5);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 4004A6A3
/// @DnDArgument : "soundid" "title"
/// @DnDSaveInfo : "soundid" "6f4ed47c-2e31-4d97-9cd0-69ad215e8f36"
audio_play_sound(title, 0, 0);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 13F8B64F
/// @DnDArgument : "soundid" "menusong"
/// @DnDSaveInfo : "soundid" "5cb3d2bd-f133-406b-beb0-fc7e6333b67b"
audio_play_sound(menusong, 0, 0);