/// @description draw star

draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*wave(waveFrom, waveTo,waveTime,0),image_yscale*wave(waveFrom, waveTo,waveTime,0),image_angle,c_white,1/*wave(alphaFrom,alphaTo,alphaTime,0)*/);
image_angle += angle_speed;


