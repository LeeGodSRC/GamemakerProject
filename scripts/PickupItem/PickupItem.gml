player = argument0

var i = 0
repeat array_length_1d(player.slots)
{
	
	if player.slots[i] == noone
	{
		player.slots[i] = instance_create_layer(player.x, player.y, "Items", obj_type)
		instance_destroy(object_index)
		if player.heldslot != i
		{
			instance_deactivate_object(player.slots[i])
		}
		break
	}
	
	i++
}