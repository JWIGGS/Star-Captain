/// @description draw ship


//draw ship
if(sprite_exists(spriteHull)){
	draw_sprite_ext(spriteHull,0,x,y,1,1,dir-90,c_white,1);
}

if(sprite_exists(spriteComponent)){
	draw_sprite_ext(spriteComponent,0,x,y,1,1,dir-90,c_white,1);
}

//draw cog

draw_set_color(c_red);
//draw_circle(x,y,4,false);


//draw activated components DEBUG
for(var i = 0; i<length; i++){
	
	var rotX = index_to_point(i,"x");
	var rotY = index_to_point(i,"y");
	
	if(activateMap[i]){
		draw_set_color(c_aqua);
		draw_circle(rotX,rotY,2,false);
	}
	
	if(componentMap[i]!="_"){
		draw_set_color(boolean_return(connectionMap[gridX[i],gridY[i]],c_lime,c_red));
		draw_set_alpha(.2);
		draw_circle(rotX,rotY,4,false);
		draw_set_alpha(1);
	}
	
	

	
	

}


