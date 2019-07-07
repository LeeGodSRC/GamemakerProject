if ( place_meeting(x, y, obj_interactable) ) {
	
	var interactable = instance_place(x, y, obj_interactable);
	
	if ( interactable._owner != noone ) {
		return; 
	}
	
	PickupItem(interactable);
	interactable._owner = object_index;
	
}