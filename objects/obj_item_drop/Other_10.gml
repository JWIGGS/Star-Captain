/// @description merging with like items

for(var i = 1; i<16; i++){
	var mergeObject = instance_nearest_nth(x,y,obj_item_drop,i);
	
	if(instance_exists(obj_item_drop)){
		if(instance_exists(mergeObject) and mergeObject!=id and distance_to_point(mergeObject.x,mergeObject.y)<radiusMerge){
			if(item = mergeObject.item){
				amount += mergeObject.amount;
				instance_destroy(mergeObject);
			}
		}
	}

}


