/// @description menu vars

depth --;

buttonAmount = 6;

buttonSprite[0] = spr_icon_craft;
buttonSprite[1] = spr_icon_blueprint;
buttonSprite[2] = spr_icon_inventory;
buttonSprite[3] = spr_icon_ship;
buttonSprite[4] = spr_icon_missions;
buttonSprite[5] = spr_icon_map;

buttonObject[0] = noone;
buttonObject[1] = obj_ui_build_controller;
buttonObject[2] = obj_ui_inventory_controller;
buttonObject[3] = noone;
buttonObject[4] = noone;
buttonObject[5] = noone;


for(var i = 0; i<buttonAmount; i++){
	if(buttonObject[i]!=noone){
		instance_create_depth(x,y,depth,buttonObject[i]);
	}
}

buttonHotkey[0] = "C";
buttonHotkey[1] = "B";
buttonHotkey[2] = "Q";
buttonHotkey[3] = "I";
buttonHotkey[4] = "N";
buttonHotkey[5] = "M";

buttonHover[0] = false;
array_fill_1d(buttonHover,buttonAmount,false);

buttonSelected[0] = false;
array_fill_1d(buttonSelected,buttonAmount,false);





