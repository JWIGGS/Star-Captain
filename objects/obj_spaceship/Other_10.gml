/// @description keystroke check

array_fill_2d(keyA,width,height,false);
array_fill_2d(keyB,width,height,false);


array_fill_2d(activateMap,width,height,false);
	

	
for(var i = 0; i<width; i++){
	for(var j = 0; j<height; j++){
		
		if(keymapA[i,j] !=""){
			
			switch(string_copy(keymapA[i,j],1,2)){
				
				case "U^": keyA[i,j] = keyboard_check(vk_up); break;
				case "D^": keyA[i,j] = keyboard_check(vk_down); break;
				case "L^": keyA[i,j] = keyboard_check(vk_left); break;
				case "R^": keyA[i,j] = keyboard_check(vk_right); break;
				case "S^": keyA[i,j] = keyboard_check(vk_space); break;
				case "M1": keyA[i,j] = mouse_check_button(mb_left); break;
				case "M2": keyA[i,j] = mouse_check_button(mb_right); break;
				default: keyA[i,j] = keyboard_check(ord(keymapA[i,j]));
			}
			
			
		}
		
		if(keymapB[i,j] !=""){
			
			switch(string_copy(keymapB[i,j],1,2)){
				
				case "U^": keyB[i,j] = keyboard_check(vk_up); break;
				case "D^": keyB[i,j] = keyboard_check(vk_down); break;
				case "L^": keyB[i,j] = keyboard_check(vk_left); break;
				case "R^": keyB[i,j] = keyboard_check(vk_right); break;
				case "S^": keyB[i,j] = keyboard_check(vk_space); break;
				case "M1": keyB[i,j] = mouse_check_button(mb_left); break;
				case "M2": keyB[i,j] = mouse_check_button(mb_right); break;
				default: keyB[i,j] = keyboard_check(ord(keymapB[i,j]));
			}
			
			
		}
		
		

		activateMap[i,j] = boolean_return(keymapType[i,j] = "or" and (keyA[i,j] or keyB[i,j]),true,activateMap[i,j]);
		activateMap[i,j] = boolean_return(keymapType[i,j] = "and" and (keyA[i,j] and keyB[i,j]),true,activateMap[i,j]);
		activateMap[i,j] = boolean_return(keymapType[i,j] = "xor" and (keyA[i,j] xor keyB[i,j]),true,activateMap[i,j]);
		
			

			
		
	}
}
	


