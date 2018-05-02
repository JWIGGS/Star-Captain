var array = argument0; ///@param array
var width = argument1; ///@param width
var height = argument2; ///@param height
var nullValue = argument3; ///@param nullValue

var maxHeight = 0;

for(var i =0; i<width; i++){
	for(var j = 0; j<height; j++){
		if(j>maxHeight and array[i,j] != nullValue){
			maxHeight = j;	
		}
	}
}

return maxHeight+1;
