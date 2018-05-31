/// @description draw ship

if(!active){
	exit;	
}


//draw ship
draw_self();

//draw cog

//draw_set_color(c_red);
//draw_circle(x,y,4,false);


//draw activated components
for(var i = 0; i<length; i++){
	if(activateMap[i]){

		var rotX = spaceshipSpriteOffset+x-sprite_xoffset+rotate_around_point(boolean_return(rotationMap[refMap[i]] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+(16*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"x")*flipMap[refMap[i]]),boolean_return(rotationMap[refMap[i]]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+(16*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"y")*flipMap[refMap[i]]),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"x");
		var rotY = spaceshipSpriteOffset+y-sprite_yoffset+rotate_around_point(boolean_return(rotationMap[refMap[i]] = 180,32*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=270,32*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+(16*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+(16*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridX[refMap[i]]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"x")*flipMap[refMap[i]]),boolean_return(rotationMap[refMap[i]]=90,32*(1-map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])),0)+boolean_return(rotationMap[refMap[i]]=180,32*(1-map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])),0)+(16*map_data(global.itemData,itemDataHeight,componentMap[refMap[i]])*(1-((rotationMap[refMap[i]] mod 180)/90)))+(16*map_data(global.itemData,itemDataWidth,componentMap[refMap[i]])*(((rotationMap[refMap[i]] mod 180)/90)))+(gridY[refMap[i]]*32)+(rotate_around_point(map_data(global.itemData,itemDataCogX,componentMap[refMap[i]]),map_data(global.itemData,itemDataCogY,componentMap[refMap[i]]),0,0,rotationMap[refMap[i]]+90,"y")*flipMap[refMap[i]]),sprite_xoffset-spaceshipSpriteOffset,sprite_yoffset-spaceshipSpriteOffset,dir,"y");

		draw_circle(rotX,rotY,2,false);


		
		
	}	
}


