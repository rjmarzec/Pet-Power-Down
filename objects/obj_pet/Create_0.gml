dogemit = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance_clamped);
audio_emitter_falloff(dogemit,1,500,1);
event_perform(ev_user0, 0);