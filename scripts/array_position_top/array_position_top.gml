var array = argument0; ///@param array
var width = argument1; ///@param width
var height = argument2; ///@param height
var nullValue = argument3; ///@param removeValue
var moveAmount = argument4; ///@param moveAmount

var block = false;

if(moveAmount = -1){
	
	moveAmount = 0;
	
	while(!block){
		for(var i = 0; i<width; i++){
		
			//block encountered
			if(array[i,0] != nullValue and !block){
				block = true;
			}
		}
	
		//shift over left
		if(!block){
			moveAmount++;
			for(var i = 0; i<width; i++){
				for(var j = 1; j<height; j++){
				
					array[@i,j-1] = array[i,j];
					if(j = height-1){
						array[@i,j] = nullValue;	
					}
				
				}
			}
		}

	}

}
else{
	
	//repeat(moveAmount){
		for(var i = 0; i<width; i++){
			for(var j = moveAmount; j<height; j++){
				
				array[@i,j-moveAmount] = array[i,j];
				if(j >= height-moveAmount){
					array[@i,j] = nullValue;	
				}
				
			}
		}
	//}
	
}

return moveAmount;
