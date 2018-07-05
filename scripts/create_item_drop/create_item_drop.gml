var xPos = argument0; ///@param x
var yPos = argument1; ///@param y
var itemSet = argument2; ///@param item
var amountSet = argument3; ///@param amount


var returnItem = instance_create_depth(xPos,yPos,-10,obj_item_drop);
with(returnItem){
	item = itemSet;
	amount = amountSet;
	
	sprite_index = asset_get_index("spr_item_"+item);
	
}