if ( slots[heldslot] == noone )
{
	if ( _cooldown == 0 ) { 
		_cooldown = 20;
		_status = status.ATTACK;
		_combat = combat.COMBO_1;
		image_index = 0;
		hands.image_index = 0;
		camera_shake(10, 5);
		camera_zoom(50, -0.5);
	} else if ( _cooldown < 8 && _combat == combat.COMBO_1) {
		_cooldown = 20;
		_combat = combat.COMBO_2;
		image_index = 0;
		hands.image_index = 0;
		camera_shake(10, 5);
		camera_zoom(50, -0.5);
	}
}