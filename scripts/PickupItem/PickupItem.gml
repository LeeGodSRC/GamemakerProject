item = argument0
player = argument1

var i = 0
repeat array_length_1d(player.slots)
{
	
	if player.slots[i] == noone
	{
		show_debug_message("Pickup slot: " + string(i))
		player.slots[i] = instance_create_layer(player.x, player.y, "Items", item.obj_type)
		instance_destroy(item)
		break
	}
	
	i++
}