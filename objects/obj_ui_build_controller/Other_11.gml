/// @description update connections


//populate connection directions
array_fill_2d(connectionMap,width,height,false);
array_fill_2d(connectionMapDirection,length,4,false);
array_fill_2d(indexMap,width,height,-1);

//update width and height
width = 0;
height = 0;
var minWidth = spaceshipMaxSize;
var minHeight = spaceshipMaxSize;

for(var i = 0; i<length; i++){
	
	if(gridX[i]+1>width){
		width = gridX[i]+1;	
	}
	
	if(gridY[i]+1>height){
		height = gridY[i]+1;	
	}
	
	if(gridX[i]<minWidth){
		minWidth = gridX[i];	
	}
	if(gridY[i]<minHeight){
		minHeight = gridY[i];	
	}

}


for(var i = 0; i<length; i++){
	gridX[i] -= minWidth;
}
spaceshipOffsetX += 32*minWidth;
width -= minWidth;


for(var i = 0; i<length; i++){
	gridY[i] -= minHeight;
}
spaceshipOffsetY += 32*minHeight;
height -= minHeight;






for(var i = 0; i<length; i++){
	
	if(hullMap[i]!="" or componentMap[i]!=""){
		
		indexMap[gridX[i],gridY[i]] = i;
		

	}
		
	if(hullMap[i]!=""){
		//rotation
		for(var j = 0; j<4; j++){
			connectionMapDirection[i,j] = map_data(global.hullData,wrap(hullDataConnectionRight+j-(rotationMap[i] div 90),hullDataConnectionRight,hullDataConnectionDown+1),hullMap[i]);
		}
		
		//flips
		if(flipMap[i]=-1){
			var hold = connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)] = connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)] = hold;
			
		}
	}
	
	else if(componentMap[i]!="" and componentMap[i]!="_"){
		//rotation
		for(var j = 0; j<4; j++){
			connectionMapDirection[i,j] = map_data(global.itemData,wrap(itemDataConnectionRight+j-(rotationMap[i] div 90),itemDataConnectionRight,itemDataConnectionDown+1),componentMap[i]);
		}
		
		//flips
		if(flipMap[i]=-1){
			var hold = connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90),0,4)] = connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)];
			connectionMapDirection[i,wrap((rotationMap[i] div 90)+2,0,4)] = hold;
		}
	}

}



//set starting connection
for(var i = 0; i<length; i++){
	if(hullMap[i]!=""){
		connection_expand(gridX[i],gridY[i]);
		break;
	}
}

//expand component connections
for(var i = 0; i<length; i++){
	if(componentMap[i]!="" and componentMap[i]!="_" and !connectionMap[i] and map_data(global.itemData,itemDataRole,componentMap[i])="attachment"){
		
		var horizontalCheck = map_data(global.itemData,itemDataConnectionUp,componentMap[i]);
		
		var checkLength = boolean_return(horizontalCheck,map_data(global.itemData,itemDataWidth,componentMap[i]),map_data(global.itemData,itemDataHeight,componentMap[i]));

		var checkAngle = rotationMap[i] + boolean_return(horizontalCheck,0,90)+boolean_return(flipMap[i]=-1,180,0);
		
		var checkXStart = gridX[i] - round(rotate_around_point(1,0,0,0,checkAngle,"x"));
		var checkYStart = gridY[i] - round(rotate_around_point(1,0,0,0,checkAngle,"y"));

		
		var connected = true;
		
		for(var j = 0; j<checkLength; j++){
			
			if(connected){
				var checkX = checkXStart - round(rotate_around_point(j,0,0,0,checkAngle-90,"x"));
				var checkY = checkYStart - round(rotate_around_point(j,0,0,0,checkAngle-90,"y"));
			
				connected = checkX>=0 and checkX<width and checkY>=0 and checkY<height and indexMap[checkX,checkY]!=-1 and hullMap[indexMap[checkX,checkY]]!="" and connectionMap[checkX,checkY] and connectionMapDirection[indexMap[checkX,checkY],wrap((checkAngle div 90)-1,0,4)];

			}
			else{
				break;	
			}
			
			
		}
		
		connectionMap[gridX[i],gridY[i]] = connected;

	}
}






//update matrix mouse
matrixMouseX = ((mouse_x - global.player.x + global.player.sprite_xoffset -spaceshipSpriteOffset- spaceshipOffsetX) div 32) + boolean_return(mouse_x - global.player.x + global.player.sprite_xoffset-spaceshipSpriteOffset - spaceshipOffsetX<0,-1,0);
matrixMouseY = ((mouse_y - global.player.y + global.player.sprite_yoffset -spaceshipSpriteOffset - spaceshipOffsetY) div 32) + boolean_return(mouse_y - global.player.y + global.player.sprite_yoffset-spaceshipSpriteOffset - spaceshipOffsetY<0,-1,0);





