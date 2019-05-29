if status == "IDLE"
{
	sprite_index = spr_player_idle
	sprite_hands = spr_hands
} else if status == "HIT"
{
	if _cooldown == 0
	{
		status = "IDLE"
		return;
	} else 
	{
		sprite_index = spr_player_hit
		_cooldown -= 1
		sprite_hands = spr_hands_hit
	}
}