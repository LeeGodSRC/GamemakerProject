if mouse_wheel_up()
{
	if ( slots[heldslot] != noone )
	{
		instance_deactivate_object(slots[heldslot]);
	}
	if ( heldslot == 0 ) heldslot = array_length_1d(slots) -1;
	else heldslot -= 1;
	if ( slots[heldslot] != noone )
	{
		slots[heldslot].x = x + slots[heldslot]._x_offset;
		slots[heldslot].y = y + slots[heldslot]._y_offset;
		instance_activate_object(slots[heldslot]);
	} else activate_hands();
}
else if mouse_wheel_down()
{
	if ( slots[heldslot] != noone )
	{
		instance_deactivate_object(slots[heldslot]);
	}
	if (heldslot == array_length_1d(slots) - 1) heldslot = 0;
	else heldslot += 1;
	if ( slots[heldslot] != noone )
	{
		slots[heldslot].x = x + slots[heldslot]._x_offset;
		slots[heldslot].y = y + slots[heldslot]._y_offset;
		instance_activate_object(slots[heldslot]);
	} else activate_hands();
}