#region path finding

if ( distance_to_object(obj_player) < _playerRange && _status != enemyStatus.ATTACKING && !collision_line(x,y,obj_player.x,obj_player.y,obj_solid,1,1)) 
{
	_status = enemyStatus.FIND;
	
	with ( _attackRange )
	{
		attacker = other;
		with ( instance_place(x, y, obj_player) ) 
		{
			damage_player();
			return;
		}
	}
	
	mp_potential_step(obj_player.x, obj_player.y, _move_speed, false);
} else if ( _status == enemyStatus.FIND )
{
	_status = enemyStatus.IDLE;
	alarm[0] = _walk_timer;
}
#endregion

_attackRange.x = x;
_attackRange.y = y;

#region sprites

sprite_index = sprites[_status];

if ( abs(angle_difference(180, direction)) < 90 ) {
	image_xscale = 1;
} else {
	image_xscale = -1;
}

#endregion