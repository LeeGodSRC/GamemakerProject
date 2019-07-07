/// @description Init player variables

#region enum
//---------------------------- Player Status

enum status {
	
	IDLE,
	WALKING,
	SLIDING,
	ATTACK,
	TAKING_DAMAGE,
	DEATH
	
}

//---------------------------- Combat combo

enum combat {
	
	COMBO_1,
	COMBO_2
	
}

#endregion

#region vars
sprites_array = array_create(5);
sprites_array[status.IDLE] = spr_player_idle;
sprites_array[status.ATTACK] = spr_player_idle;
sprites_array[status.SLIDING] = spr_player_sliding;

combat_sprites = array_create(2);
combat_sprites[combat.COMBO_1] = spr_player_combo1;
combat_sprites[combat.COMBO_2] = spr_player_combo2;

sprite_hands = spr_hands;

_speed = 5;
_speed_hit = 0.3;
_slide_speed = 0; // start with 1.5

_health = 100;
_cooldown = 0;

_status = status.IDLE;
_combat = noone;

//---------------------------- INVENTORY

slots = array_create(9);
heldslot = 0;

var i = 0;

repeat array_length_1d(slots)
{
	
	slots[i] = noone;
	i++;
	
}

hands = instance_create_layer(x, y, "Items", obj_player_hands);
hands.follow = object_index;

#endregion