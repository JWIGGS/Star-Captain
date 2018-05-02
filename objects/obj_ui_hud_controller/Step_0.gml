/// @description hud clicks



//left bar
for(var i = 0; i <buttonAmount; i++){
	
	buttonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(displayWidth/2,displayHeight,0,i,buttonAmount)-28,draw_bar_point_y(displayWidth/2,displayHeight,0,i,buttonAmount)-28,draw_bar_point_x(displayWidth/2,displayHeight,0,i,buttonAmount)+28,draw_bar_point_y(displayWidth/2,displayHeight,0,i,buttonAmount)+28)
	
	if((buttonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(ord(buttonHotkey[i]))){
		buttonSelected[i] = !buttonSelected[i];
		
		for(var j = 0; j<buttonAmount; j++){
			if(j!=i){
				buttonSelected[j] = false;
			}
			
			if(buttonObject[j]!=noone){
				with(buttonObject[j]){
					var activePrev = active;
					active = other.buttonSelected[j];
					if(activePrev!=active){
						event_user(14+active);
					}
				
				}
			}
			
			
		}

	}

}

