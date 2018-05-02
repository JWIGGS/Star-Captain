/// @description pages interaction

//pages interaction
for(var i = 0; i<global.player.inventoryPages; i++){
	pageHover[i] = point_in_rectangle(gui_mouse_get_x(),gui_mouse_get_y(),xPos-(global.player.inventoryPages*16)+(i*32)+16-12,yPos+556-12,xPos-(global.player.inventoryPages*16)+(i*32)+16+12,yPos+556+12);
	
	
	if(pageHover[i] and mouse_check_button_pressed(mb_left)){
		global.player.inventoryPageSelected = i;	
	}
}

if(mouse_wheel_down()){
	global.player.inventoryPageSelected = clamp(global.player.inventoryPageSelected+1,0,8);
}
if(mouse_wheel_up()){
	global.player.inventoryPageSelected = clamp(global.player.inventoryPageSelected-1,0,8);
}
