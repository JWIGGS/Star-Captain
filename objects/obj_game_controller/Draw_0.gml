/// @description grid

//draw background stars
draw_set_color(c_white);
for(var i = -1024*8; i<1024*8; i+=128){
	for(var j = -1024*8; j<1024*8; j+=128){
		draw_point(i,j)
	}
}