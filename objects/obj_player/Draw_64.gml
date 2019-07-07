#region Draw player status
draw_text(20, 20, "Held slot: " + string(heldslot) + " Slide speed: " + string(_slide_speed) + " Health: " + string(_health))
draw_text(40, 40, "Cooldown " + string(_cooldown) + " " + sprite_get_name(sprite_hands))
#endregion

#region Draw inventory
var i = 0

repeat array_length_1d(slots)
{
	var _obj = slots[i]
	if (heldslot == i) draw_set_color(c_red)
	if (_obj == noone)
	{
		draw_text(20, 60 + i * 20, "Noone")
	} else
	{
		draw_text(20, 60 + i * 20, _obj._name)
	}
	draw_set_color(c_white)
	i++
}
#endregion