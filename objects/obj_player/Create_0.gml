/// @description Init player variables

//---------------------------- Player Status

enum status {
	
	IDLE,
	WALKING,
	ATTACK,
	TAKING_DAMAGE,
	DEATH
	
}

sprites_array = array_create(5)
sprites_array[status.IDLE] = spr_player_idle
sprites_array[status.ATTACK] = spr_player_hit

//---------------------------- VARs

sprite_hands = spr_hands

_speed = 5
_speed_hit = 0.3

_health = 100
_cooldown = 0

_status = status.IDLE

//---------------------------- INVENTORY

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
