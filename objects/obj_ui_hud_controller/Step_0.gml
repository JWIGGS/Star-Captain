/// @description hud clicks



//left bar
for(var i = 0; i <buttonAmount; i++){
	
	//button hover
	buttonHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),draw_bar_point_x(barX,barY,barAngle,i,buttonAmount)-28,draw_bar_point_y(barX,barY,barAngle,i,buttonAmount)-28,draw_bar_point_x(barX,barY,barAngle,i,buttonAmount)+28,draw_bar_point_y(barX,barY,barAngle,i,buttonAmount)+28)
	
	//button press
	if((buttonHover[i] and mouse_check_button_pressed(mb_left)) or keyboard_check_pressed(ord(buttonHotkey[i]))){
		buttonSelected[i] = !buttonSelected[i];
		
		//unselect all other buttons
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

