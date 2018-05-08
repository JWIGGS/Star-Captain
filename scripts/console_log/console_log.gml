var outputString = "";
for(var i = 0; i<argument_count; i++){
	outputString += string(argument[i]);
	if(i+1<argument_count){
		outputString += ", ";	
	}
}

show_debug_message(outputString);