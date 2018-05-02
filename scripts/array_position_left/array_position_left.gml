var array = argument0; ///@param array
var width = argument1; ///@param width
var height = argument2; ///@param height
var nullValue = argument3; ///@param removeValue
var moveAmount = argument4; ///@param moveAmount

var block = false;

if(moveAmount = -1){
	
	moveAmount = 0;
	
	while(!block){
		for(var j = 0; j<height; j++){
		
			//block encountered
			if(array[0,j] != nullValue and !block){
				block = true;
			}
		}
	
		//shift over left
		if(!block){
			moveAmount ++;
			for(var j = 0; j<height; j++){
				for(var i = 1; i<width; i++){
				
					array[@i-1,j] = array[i,j];
					if(i = width-1){
						array[@i,j] = nullValue;	
					}
				
				}
			}
		}

	}
}
else{
	//repeat(moveAmount){

		for(var j = 0; j<height; j++){
			for(var i = moveAmount; i<width; i++){
				
				array[@i-moveAmount,j] = array[i,j];
				if(i >= width-moveAmount){
					array[@i,j] = nullValue;	
				}
				
			}
		}
		
		
	//}
}

return moveAmount;

