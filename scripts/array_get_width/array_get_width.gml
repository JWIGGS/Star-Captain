var array = argument0; ///@param array
var width = argument1; ///@param width
var height = argument2; ///@param height
var nullValue = argument3; ///@param nullValue

var maxWidth = 0;

for(var j =0; j<height; j++){
	for(var i = 0; i<width; i++){
		if(i>maxWidth and array[i,j] != nullValue){
			maxWidth = i;	
		}
	}
}

return maxWidth+1;