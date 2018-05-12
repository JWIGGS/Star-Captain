/// @description keystroke check

//clear activate
array_fill_1d(activateMap,length,false);
	

for(var i = 0; i<length; i++){
	
	if(keyMap[i] !=""){
			
		switch(string_copy(keyMap[i],1,2)){
				
			case "U^": activateMap[refMap[i]] = activateMap[refMap[i]] or keyboard_check(vk_up); break;
			case "D^": activateMap[refMap[i]] = activateMap[refMap[i]] or keyboard_check(vk_down); break;
			case "L^": activateMap[refMap[i]] = activateMap[refMap[i]] or keyboard_check(vk_left); break;
			case "R^": activateMap[refMap[i]] = activateMap[refMap[i]] or keyboard_check(vk_right); break;
			case "S^": activateMap[refMap[i]] = activateMap[refMap[i]] or keyboard_check(vk_space); break;
			case "M1": activateMap[refMap[i]] = activateMap[refMap[i]] or mouse_check_button(mb_left); break;
			case "M2": activateMap[refMap[i]] = activateMap[refMap[i]] or mouse_check_button(mb_right); break;
			default: activateMap[refMap[i]] = activateMap[refMap[i]] or keyboard_check(ord(keyMap[i]));
		}
			
			
	}


}

	


