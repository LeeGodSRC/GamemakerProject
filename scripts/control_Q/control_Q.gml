if ( slots[heldslot] != noone ) {
	
	var _taking = slots[heldslot];
	
	_taking._owner = noone;
	_taking._hsp += 3;
	_taking._vsp += 2.5;
	_taking.direction = image_xscale;
	_taking._owner = noone;
	_taking = noone;
	slots[heldslot] = noone;
	activate_hands();
	
}