/// @description keystroke check

//clear keys
array_fill_1d(keyA,length,false);
array_fill_1d(keyB,length,false);
array_fill_1d(activateMap,length,false);
	

for(var i = 0; i<length; i++){
	
	if(keymapA[i] !=""){
			
		switch(string_copy(keymapA[i],1,2)){
				
			case "U^": keyA[i] = keyboard_check(vk_up); break;
			case "D^": keyA[i] = keyboard_check(vk_down); break;
			case "L^": keyA[i] = keyboard_check(vk_left); break;
			case "R^": keyA[i] = keyboard_check(vk_right); break;
			case "S^": keyA[i] = keyboard_check(vk_space); break;
			case "M1": keyA[i] = mouse_check_button(mb_left); break;
			case "M2": keyA[i] = mouse_check_button(mb_right); break;
			default: keyA[i] = keyboard_check(ord(keymapA[i]));
		}
			
			
	}
		
	if(keymapB[i] !=""){
			
		switch(string_copy(keymapB[i],1,2)){
				
			case "U^": keyB[i] = keyboard_check(vk_up); break;
			case "D^": keyB[i] = keyboard_check(vk_down); break;
			case "L^": keyB[i] = keyboard_check(vk_left); break;
			case "R^": keyB[i] = keyboard_check(vk_right); break;
			case "S^": keyB[i] = keyboard_check(vk_space); break;
			case "M1": keyB[i] = mouse_check_button(mb_left); break;
			case "M2": keyB[i] = mouse_check_button(mb_right); break;
			default: keyB[i] = keyboard_check(ord(keymapB[i]));
		}
			
			
	}
		
		
	activateMap[i] = boolean_return(keymapType[i] = "or" and (keyA[i] or keyB[i]),true,activateMap[i]);
	activateMap[i] = boolean_return(keymapType[i] = "and" and (keyA[i] and keyB[i]),true,activateMap[i]);
	activateMap[i] = boolean_return(keymapType[i] = "xor" and (keyA[i] xor keyB[i]),true,activateMap[i]);

}

	


