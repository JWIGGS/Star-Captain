/// @description draw ui


//bottom bar
draw_bar(displayWidth/2,displayHeight,0,buttonAmount);

for(var i = 0; i <buttonAmount; i++){
	
	draw_bar_sprite(spr_gui_button,(buttonSelected[i]*2) + buttonHover[i],displayWidth/2,displayHeight,0,i,buttonAmount);
	draw_bar_sprite(buttonSprite[i],0,displayWidth/2,displayHeight,0,i,buttonAmount);
	
	draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
	draw_text(draw_bar_point_x(displayWidth/2,displayHeight,0,i,buttonAmount)+20,draw_bar_point_y(displayWidth/2,displayHeight,0,i,buttonAmount)+16,buttonHotkey[i]);

}

