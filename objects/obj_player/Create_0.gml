/// @description Insert description here

hsp = 5;
vsp = 5;

slots = array_create(9);
heldslot = 0;

var i = 0;

repeat array_length_1d(slots)
{
	
	slots[i] = noone;
	
	i++
	
}

slots[0] = instance_create_layer(x, y, "Items", obj_sword_holding)