dogemit = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_emitter_falloff(dogemit,1,500,1);
audio_play_sound_on(dogemit, woof, true, 1);