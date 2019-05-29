/// @description Insert description here
// You can write your code in this editor

var _up = keyboard_check(vk_up) || keyboard_check(ord("W"))
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"))
var _left = keyboard_check(vk_left)  || keyboard_check(ord("A"))
var _right = keyboard_check(vk_right)  || keyboard_check(ord("D"))

velocity = [(_right - _left) * _speed, (_down - _up) * _speed]

move_and_contact_tiles(collisions_tile_map_id, 32, velocity)

control_check_keyboards()

if mouse_wheel_up()
{
	if slots[heldslot] != noone
	{
		instance_deactivate_object(slots[heldslot])
	}
	if (heldslot == 0) heldslot = array_length_1d(slots) -1
	else heldslot -= 1
	if slots[heldslot] != noone
	{
		instance_activate_object(slots[heldslot])
	} else instance_activate_object(hands)
}
else if mouse_wheel_down()
{
	if slots[heldslot] != noone
	{
		instance_deactivate_object(slots[heldslot])
	}
	if (heldslot == array_length_1d(slots) - 1) heldslot = 0
	else heldslot += 1
	if slots[heldslot] != noone
	{
		instance_activate_object(slots[heldslot])
	} else instance_activate_object(hands)
}

if slots[heldslot] != noone
{
	slots[heldslot].x = x + slots[heldslot].x_offset
	slots[heldslot].y = y + slots[heldslot].y_offset
}

if x - mouse_x > 0
{
	image_xscale = Wave(0.9, 1.1, 3, 1)
} else
{
	image_xscale = Wave(-0.9, -1.1, 3, -1)
}

image_yscale = Wave(0.9, 1.1, 3, 1)