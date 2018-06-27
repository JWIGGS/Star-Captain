/// @description 
if(!active){
	exit;	
}


//layer bar
draw_bar(layerBarX,layerBarY,layerBarAngle,layerAmount);

for(var i = 0; i<layerAmount; i++){
	draw_bar_sprite(spr_gui_button,((layerSelected=i)*2) + layerButtonHover[i],layerBarX,layerBarY,layerBarAngle,i,layerAmount);
	draw_bar_sprite(layerButtonSprite[i],0,layerBarX,layerBarY,layerBarAngle,i,layerAmount);
	
	draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
	draw_text(draw_bar_point_x(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+20,draw_bar_point_y(layerBarX,layerBarY,layerBarAngle,i,layerAmount)+16,layerButtonHotkeyDisplay[i]);
}

//bottom bar
with(par_popup){
	if(active){
		exit;	
	}
}

switch(layerSelected){
	
	
	//edit
	case 1:
		
		if(global.player.inventoryMouseItem!=""){
			
			
			switch(map_data(global.itemData, itemDataClass,global.player.inventoryMouseItem)){
				
				
				//hull
				case "material":
				
					draw_bar(hullBarX,hullBarY,hullBarAngle,hullAmount);
		
					for(var i = 0; i<hullAmount; i++){
						draw_bar_sprite(spr_gui_button,((hullSelected=i)*2) + hullButtonHover[i],hullBarX,hullBarY,hullBarAngle,i,hullAmount);
						draw_bar_sprite(asset_get_index("spr_hull_"+global.player.inventoryMouseItem+"_"+global.hull[i]),0,hullBarX,hullBarY,hullBarAngle,i,hullAmount);
	
						draw_text_formatting(c_white,fa_right,fa_middle,font_item_amount);
						draw_text(draw_bar_point_x(hullBarX,hullBarY,hullBarAngle,i,hullAmount)+20,draw_bar_point_y(hullBarX,hullBarY,hullBarAngle,i,hullAmount)+16,hullButtonHotkey[i]);
					}
					
					break;
			
			}
		
		}
		
		break;
		
	//keybinds
	case 0:
	
		break;

	
	
	
}


	



	

