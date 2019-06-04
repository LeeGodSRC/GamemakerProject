if follow == noone || follow.slots[follow.heldslot] != noone
{
	instance_deactivate_object(object_index)
	return;
}

if follow._status == status.ATTACK
{
	sprite_index = spr_hands_hit
	y = follow.y + 8
	image_xscale = 1
	image_yscale = 1
} else
{
	sprite_index = spr_hands
	y_add = Wave(0, 8, 3, 8)

	xscale_add = Wave(-0.1, 0.1, 3, 0)
	yscale_add = Wave(-0.1, 0.1, 3, 0)

	y = follow.y + 8 + y_add
	image_xscale = 1 + xscale_add
	image_yscale = 1 + yscale_add
}

x = follow.x
image_xscale *= follow.image_xscale