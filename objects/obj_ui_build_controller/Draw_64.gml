/// @description 
if(!active){
	exit;	
}

draw_bar(layerBarX,layerBarY,layerBarAngle,layerAmount);


for(var i = 0; i<3; i++){
	draw_bar_sprite(spr_gui_button,((layerSelected=i)*2) + layerButtonHover[i],layerBarX,layerBarY,layerBarAngle,i,layerAmount);
	draw_bar_sprite(layerButtonSprite[i],0,layerBarX,layerBarY,layerBarAngle,i,layerAmount);
	
	draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
	draw_text(draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+20,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+16,layerButtonHotkey[i]);
}

	

