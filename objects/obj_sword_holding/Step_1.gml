/// @description Insert description here

if follow == noone
{
	instance_deactivate_object(object_index)
	return
}

direction = point_direction(x, y, mouse_x, mouse_y)

if (direction > 90 && direction < 270) image_yscale = -1 else image_yscale = 1

image_angle = direction