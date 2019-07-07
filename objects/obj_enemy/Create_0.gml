#region enums

enum enemyStatus 
{
	IDLE, WALKING, FIND, ATTACKING, TAKING_DAMAGE, DEATH
}

#endregion

#region vars

event_inherited();

_status = enemyStatus.IDLE;
_velocity = [0, 0];
_path = path_add();
_playerRange = 300;
_attackDone = false;
_move_speed = 2;
_damage = 1;

_attackRange = instance_create_layer(x, y, "HitBoxes", obj_hitbox_enemy);

_walk_timer = 250;
_idle_x = 0;
_idle_y = 0;


alarm[0] = 5;

sprites_array = array_create(6);

#endregion