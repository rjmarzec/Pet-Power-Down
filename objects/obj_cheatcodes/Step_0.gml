/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7333D96F
/// @DnDArgument : "var" "global.settingsselector"
/// @DnDArgument : "value" "3"
if(global.settingsselector == 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6C172A5A
	/// @DnDParent : 7333D96F
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "levelunlocks"
	/// @DnDSaveInfo : "spriteind" "08c1ecb7-7f1c-4228-b6c2-30d72864f862"
	sprite_index = levelunlocks;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C18D645
	/// @DnDParent : 7333D96F
	/// @DnDArgument : "var" "cheatcodesoundplayed"
	if(cheatcodesoundplayed == 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 7CE38315
		/// @DnDParent : 3C18D645
		/// @DnDArgument : "soundid" "cheatcodesselect"
		/// @DnDSaveInfo : "soundid" "815f1c1a-ac5f-4eb6-bdec-8b404c2d78dc"
		audio_play_sound(cheatcodesselect, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F802110
		/// @DnDParent : 3C18D645
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "cheatcodesoundplayed"
		cheatcodesoundplayed = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 633079F0
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 09B686CD
	/// @DnDParent : 633079F0
	/// @DnDArgument : "spriteind" "levelunlock"
	/// @DnDSaveInfo : "spriteind" "4b73e9a3-f29d-41af-93b5-9d248549d838"
	sprite_index = levelunlock;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 722A873A
	/// @DnDParent : 633079F0
	/// @DnDArgument : "var" "cheatcodesoundplayed"
	cheatcodesoundplayed = 0;
}