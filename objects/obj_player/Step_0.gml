/// @description Insert description here
// You can write your code in this editor

#region input

var _up = keyboard_check(vk_up) || keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var _left = keyboard_check(vk_left)  || keyboard_check(ord("A"));
var _right = keyboard_check(vk_right)  || keyboard_check(ord("D"));
	
#endregion

#region movement

var _toSpeed = _speed;

if ( _status == status.ATTACK )
{
	_toSpeed *= _speed_hit;
}

velocity = [(_right - _left) * _toSpeed, (_down - _up) * _toSpeed];

collision_movement();

control_check_keyboards();

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
		instance_activate_object(slots[heldslot]);
	} else instance_activate_object(hands);
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
		instance_activate_object(slots[heldslot]);
	} else instance_activate_object(hands);
}

if ( slots[heldslot] != noone )
{
	slots[heldslot].x = x + slots[heldslot].x_offset;
	slots[heldslot].y = y + slots[heldslot].y_offset;
}

#endregion

#region sprite

sprite_index = sprites_array[_status];
if ( x - mouse_x > 0 )
{
	image_xscale = Wave(0.9, 1.1, 3, 1);
} else
{
	image_xscale = Wave(-0.9, -1.1, 3, -1);
}

image_yscale = Wave(0.9, 1.1, 3, 1);

#endregion