/// @description Insert description here
// You can write your code in this editor

_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
_down = keyboard_check(vk_down) || keyboard_check(ord("S"))
_left = keyboard_check(vk_left)  || keyboard_check(ord("A"))
_right = keyboard_check(vk_right)  || keyboard_check(ord("D"))

var _x = _right - _left
var _y = _down - _up

_x *= hsp
_y *= vsp

x = x + _x
y = y + _y

if mouse_wheel_up() && heldslot > 0
{
	heldslot -= 1
}
if mouse_wheel_down() && heldslot < array_length_1d(slots) - 1
{
	heldslot += 1
}

if slots[heldslot] != noone
{
	slots[heldslot].x = x + slots[heldslot].x_offset
	slots[heldslot].y = y + slots[heldslot].y_offset
}

if x - mouse_x > 0
{
	image_xscale = 1
} else
{
	image_xscale = -1
}