draw_text(20, 20, "Held slot: " + string(heldslot))
var i = 0
repeat array_length_1d(slots)
{
	var _obj = slots[i]
	if (_obj == noone)
	{
		draw_text(20, 40 + i * 20, "Noone")
	} else
	{
		draw_text(20, 40 + i * 20, _obj.name)
	}
	i++
}