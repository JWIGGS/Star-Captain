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
	
	var rotX, rotY;
	
	if(componentMap[refMap[i]]!="" and componentMap[refMap[i]]!="_"){
		rotX = spaceshipSpriteOffset+x-sprite_xoffset+rotate_around_point(boolean_return(rotationMap[refMap[i]] = 180,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=270,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"x")*flipMap[refMap[i]]),boolean_return(rotationMap[refMap[i]]=90,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=180,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"y")*flipMap[refMap[i]]),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"x");
		rotY = spaceshipSpriteOffset+y-sprite_yoffset+rotate_around_point(boolean_return(rotationMap[refMap[i]] = 180,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=270,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"x")*flipMap[refMap[i]]),boolean_return(rotationMap[refMap[i]]=90,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=180,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"y")*flipMap[refMap[i]]),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"y");
	}
	else if(hullMap[refMap[i]]!=""){
		rotX = spaceshipSpriteOffset+x-sprite_xoffset+rotate_around_point(((gridSize/2)*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*gridSize),((gridSize/2)*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*gridSize),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"x");
		rotY = spaceshipSpriteOffset+x-sprite_xoffset+rotate_around_point(((gridSize/2)*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*gridSize),((gridSize/2)*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*gridSize),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"y");
	}
	
	if(activateMap[i]){
		//rotX = spaceshipSpriteOffset+x-sprite_xoffset+rotate_around_point(boolean_return(rotationMap[refMap[i]] = 180,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=270,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"x")*flipMap[refMap[i]]),boolean_return(rotationMap[refMap[i]]=90,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=180,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"y")*flipMap[refMap[i]]),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"x");
		//rotY = spaceshipSpriteOffset+y-sprite_yoffset+rotate_around_point(boolean_return(rotationMap[refMap[i]] = 180,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=270,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"x")*flipMap[refMap[i]]),boolean_return(rotationMap[refMap[i]]=90,gridSize*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=180,gridSize*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+((gridSize/2)*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+((gridSize/2)*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*gridSize)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"y")*flipMap[refMap[i]]),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"y");

		draw_set_color(c_lime);
		draw_circle(rotX,rotY,2,false);
	}
	
	if(componentMap[i]!="_"){
		draw_set_color(boolean_return(connectionMap[gridX[i],gridY[i]],c_lime,c_red));
		//draw_circle(rotX,rotY,4,false);
	}
	
	

	
	

}


