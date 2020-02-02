/// @description setup
image_speed=0;
x=mouse_x+sprite_width/2;
y=mouse_y+sprite_height/2;

scale = 0.08;
image_xscale = scale;
image_yscale = scale;

var me = audio_emitter_create();
audio_play_sound_on(me,pickup_snd,false,0);
audio_emitter_free(me);