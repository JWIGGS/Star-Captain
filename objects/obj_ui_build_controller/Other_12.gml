/// @description auto switch layers
if(global.player.inventoryMouseItem!=""){
	if(map_data(global.itemData,itemDataRole,global.player.inventoryMouseItem)="material"){
		layerSelected = 0;	
	}
	else{
		layerSelected = 1;	
	}
}