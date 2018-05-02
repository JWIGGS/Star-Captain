/// @description draw ui


//bottom bar
draw_bar(barX,barY,barAngle,buttonAmount);

for(var i = 0; i <buttonAmount; i++){
	
	draw_bar_sprite(spr_gui_button,(buttonSelected[i]*2) + buttonHover[i],barX,barY,barAngle,i,buttonAmount);
	draw_bar_sprite(buttonSprite[i],0,barX,barY,barAngle,i,buttonAmount);
	
	draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
	draw_text(draw_bar_point_x(barX,barY,barAngle,i,buttonAmount)+20,draw_bar_point_y(barX,barY,barAngle,i,buttonAmount)+16,buttonHotkey[i]);

}

