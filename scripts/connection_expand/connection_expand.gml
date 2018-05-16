var xPos = argument0; ///@param x
var yPos = argument1; ///@param y

connectionMap[xPos,yPos] = true;

//hull check

	
//right
if(connectionMapDirection[indexMap[xPos,yPos],0] and xPos<width-1 and indexMap[xPos+1,yPos]!=-1){
	//hull
	if(hullMap[indexMap[xPos+1,yPos]]!=""){
		if(connectionMapDirection[indexMap[xPos+1,yPos],2] and !connectionMap[xPos+1,yPos]){
			connection_expand(xPos+1,yPos);
		}
	}
}

//up
if(connectionMapDirection[indexMap[xPos,yPos],1] and yPos>0 and indexMap[xPos,yPos-1]!=-1){
	//hull
	if(hullMap[indexMap[xPos,yPos-1]]!=""){
		if(connectionMapDirection[indexMap[xPos,yPos-1],3] and !connectionMap[xPos,yPos-1]){
			connection_expand(xPos,yPos-1);	
		}
	}
}

//left
if(connectionMapDirection[indexMap[xPos,yPos],2] and xPos>0 and indexMap[xPos-1,yPos]!=-1){
	//hull
	if(hullMap[indexMap[xPos-1,yPos]]!=""){
		if(connectionMapDirection[indexMap[xPos-1,yPos],0] and !connectionMap[xPos-1,yPos]){
			connection_expand(xPos-1,yPos);	
		}
	}
}

//down
if(connectionMapDirection[indexMap[xPos,yPos],3] and yPos<height-1 and indexMap[xPos,yPos+1]!=-1){
	//hull
	if(hullMap[indexMap[xPos,yPos+1]]!=""){
		if(connectionMapDirection[indexMap[xPos,yPos+1],1] and !connectionMap[xPos,yPos+1]){
			connection_expand(xPos,yPos+1);
		}
	}
}







