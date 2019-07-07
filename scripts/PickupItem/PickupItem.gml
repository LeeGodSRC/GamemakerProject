var item = argument0;

var i = 0
repeat array_length_1d(slots)
{
	
	if slots[i] == noone
	{
		slots[i] = item
		if heldslot != i
		{
			instance_deactivate_object(slots[i])
		}
		break
	}
	
	i++
}