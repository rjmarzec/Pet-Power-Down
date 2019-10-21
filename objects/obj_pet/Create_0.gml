global.dogemit = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_emitter_falloff(global.dogemit,1,750,1.5);
audio_play_sound_on(global.dogemit, woof, false, 1);
