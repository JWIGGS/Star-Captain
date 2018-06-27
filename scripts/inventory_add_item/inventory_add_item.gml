var item = argument0; ///@param item
var amount = argument1; ///@param amount
var object = argument2; ///@param object


if(item!=""){
	with(object){
		
		var placedItems = false;
		
		if(inventoryMouseItem = item){
			inventoryMouseAmount += amount;
			var stack  = map_data(global.itemData,itemDataStack,inventoryMouseItem);
			if(inventoryMouseAmount>stack){
				amount = inventoryMouseAmount-stack;
				inventoryMouseAmount = stack;		
			}
			else{
				placedItems = true;
			}
		}
		
		//add item to existing stack
		for(var i = 0; i<inventoryPages; i++){
			for(var j = 0; j<inventoryPageSize; j++){
				if(inventoryItem[i,j] = item){
					inventoryAmount[i,j] += amount;
					var stack = map_data(global.itemData,itemDataStack,inventoryItem[i,j]);
					if(inventoryAmount[i,j]>stack){
						amount = inventoryAmount[i,j]-stack;
						inventoryAmount[i,j] = stack;
						
					}
					else{
						j = inventoryPageSize+10;
						i = inventoryPages+10;
						placedItems = true;
					}
				
				}
			}
		}
		
		//create new stack
		while(!placedItems){
			for(var i = 0; i<inventoryPages; i++){
				for(var j = 0; j<inventoryPageSize; j++){
					
					
					
					canPlace = true;
					
					for(var m = 0; m<map_data(global.itemData,itemDataWidth,item);m++){
						for(var n = 0; n<map_data(global.itemData,itemDataHeight,item);n++){

							if(value_to_2d(j,"x",inventoryGridWidth)+m>=inventoryGridWidth or value_to_2d(j,"y",inventoryGridWidth)+n>=inventoryGridHeight or inventoryItem[i,value_to_1d(value_to_2d(j,"x",inventoryGridWidth)+m,value_to_2d(j,"y",inventoryGridWidth)+n,inventoryGridWidth)] !="" or inventoryReferenceX[i,value_to_1d(value_to_2d(j,"x",inventoryGridWidth)+m,value_to_2d(j,"y",inventoryGridWidth)+n,inventoryGridWidth)] !=-1 or inventoryReferenceY[i,value_to_1d(value_to_2d(j,"x",inventoryGridWidth)+m,value_to_2d(j,"y",inventoryGridWidth)+n,inventoryGridWidth)]!=-1){
								canPlace = false;	
							}
						}
					}
					
					if(canPlace){

						inventoryItem[i,j] = item;
						inventoryAmount[i,j] += amount;
						
						for(var m = 0; m<map_data(global.itemData,itemDataWidth,item);m++){
							for(var n = 0; n<map_data(global.itemData,itemDataHeight,item);n++){
								inventoryReferenceX[i,value_to_1d(value_to_2d(j,"x",inventoryGridWidth)+m,value_to_2d(j,"y",inventoryGridWidth)+n,inventoryGridWidth)] = value_to_2d(j,"x",inventoryGridWidth);
								inventoryReferenceY[i,value_to_1d(value_to_2d(j,"x",inventoryGridWidth)+m,value_to_2d(j,"y",inventoryGridWidth)+n,inventoryGridWidth)] = value_to_2d(j,"y",inventoryGridWidth);
								
							}
						}
						var stack = map_data(global.itemData,itemDataStack,inventoryItem[i,j]);
						if(inventoryAmount[i,j]>stack){
							amount = inventoryAmount[i,j]-stack;
							inventoryAmount[i,j] = stack;
						
						}
						else{
							j = inventoryPageSize+10;
							i = inventoryPages+10;
							placedItems = true;
						}
						

					}
				}
							
			}
		}
	}

}

return amount;


