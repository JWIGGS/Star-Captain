/// @description update connections


//populate connection directions
array_fill_2d(connectionMap,width,height,false);
array_fill_2d(connectionMapDirection,length,4,false);
array_fill_2d(indexMap,width,height,-1);

//update width and height
width = 0;
height = 0;
var minWidth = -1;
var minHeight = -1;

for(var i = 0; i<length; i++){
	
	if(gridX[i]+1>width){
		width = gridX[i]+1;	
	}
	
	if(gridY[i]+1>height){
		height = gridY[i]+1;	
	}
	
	if(gridX[i]<minWidth or minWidth=-1){
		minWidth = gridX[i];	
	}
	if(gridY[i]<minHeight or minHeight=-1){
		minHeight = gridY[i];	
	}

}

if(minWidth>0){
	for(var i = 0; i<length; i++){
		gridX[i] -= minWidth;
		gridRefX[i] -= minWidth;
	}
	spaceshipOffsetX += 32*minWidth;
	width -= minWidth;
}

if(minHeight>0){
	for(var i = 0; i<length; i++){
		gridY[i] -= minHeight;
		gridRefY[i] -= minHeight;
	}
	spaceshipOffsetY += 32*minHeight;
	height -= minHeight;
}





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






