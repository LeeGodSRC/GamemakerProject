y = y + Wave(-1, 1, 3, 0)

if place_meeting(x, y, obj_player)
{
	PickupItem(instance_place(x, y, obj_player))
}