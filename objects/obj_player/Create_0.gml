/// @description Insert description here

var layer_id = layer_get_id("Collisions")
collisions_tile_map_id = layer_tilemap_get_id(layer_id)
sprite_hands = spr_hands

_speed = 5

_health = 100
_cooldown = 0

status = "IDLE"

slots = array_create(9)
heldslot = 0

var i = 0

repeat array_length_1d(slots)
{
	
	slots[i] = noone
	
	i++
	
}

slots[0] = instance_create_layer(x, y, "Items", obj_sword_holding)

hands = instance_create_layer(x, y, "Items", obj_player_hands)
hands.follow = object_index