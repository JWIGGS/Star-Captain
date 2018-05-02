var item = argument0; ///@param item
var amount = argument1; ///@param amount
var object = argument2; ///@param object


if(item!=""){
	with(object){
		
		//add item to existing stack
		for(var i = 0; i<inventoryPages; i++){
			for(var j = 0; j<inventoryPageSize; j++){
				if(inventoryItem[i,j] = item){
					inventoryAmount[i,j] += amount;
					j = inventoryPageSize+10;
					i = inventoryPages+10;
				
				}
			}
		}
	
		//create new stack
		if(i != inventoryPages+11 and j!= inventoryPageSize+11){
			for(var i = 0; i<inventoryPages; i++){
				for(var j = 0; j<inventoryPageSize; j++){
					
					canPlace = true;
					
					for(var m = 0; m<map_data(global.itemData,itemDataWidth,item);m++){
						for(var n = 0; n<map_data(global.itemData,itemDataHeight,item);n++){
							if(inventoryItem[i,value_to_1d(value_to_2d(j,"x",15)+m,value_to_2d(j,"y",15)+n,15)] !="" or inventoryReferenceX[i,value_to_1d(value_to_2d(j,"x",15)+m,value_to_2d(j,"y",15)+n,15)] !=-1 or inventoryReferenceY[i,value_to_1d(value_to_2d(j,"x",15)+m,value_to_2d(j,"y",15)+n,15)]!=-1){
								canPlace = false;	
							}
						}
					}
					
					if(canPlace){

						inventoryItem[i,j] = item;
						inventoryAmount[i,j] += amount;
						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,item);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,item);n++){
								inventoryReferenceX[i,value_to_1d(value_to_2d(j,"x",15)+m,value_to_2d(j,"y",15)+n,15)] = value_to_2d(j,"x",15);
								inventoryReferenceY[i,value_to_1d(value_to_2d(j,"x",15)+m,value_to_2d(j,"y",15)+n,15)] = value_to_2d(j,"y",15);
								
							}
						}
						
						j = inventoryPageSize+10;
						i = inventoryPages+10;

					}
				}
							
			}
		}
	}

}


