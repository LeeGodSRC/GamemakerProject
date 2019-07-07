/// @description Insert description here
// You can write your code in this editor

event_inherited();

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

if ( _status == status.SLIDING )
{
	_toSpeed *= _slide_speed;
	_slide_speed = max(_slide_speed - 0.015, 0);
}

velocity = [(_right - _left) * _toSpeed, (_down - _up) * _toSpeed];

collision_movement();

control_check_keyboards();

#endregion

#region sprite

if ( _status == status.ATTACK ) {
	sprite_index = combat_sprites[_combat];
} else sprite_index = sprites_array[_status];
if ( x - mouse_x > 0 )
{
	image_xscale = Wave(0.9, 1.1, 3, 1);
} else
{
	image_xscale = Wave(-0.9, -1.1, 3, -1);
}

image_yscale = Wave(0.9, 1.1, 3, 1);

#endregion