#region status action

switch ( _status )
{
	#region IDLE
	
	case enemyStatus.IDLE: {
		break;
		
	}
	
	#endregion
	
	#region WALKING
	
	case enemyStatus.WALKING: {
		if ( ( abs(x - _idle_x) + abs(y - _idle_y) ) / 2 < 5) {
			_status = enemyStatus.IDLE;
			alarm[0] = _walk_timer;
			break;
		}
		mp_potential_step(_idle_x, _idle_y, _move_speed, false);
		break;
	}
	
	#endregion
	
	#region ATTACKING
	
	case enemyStatus.ATTACKING: {
		if ( animation_end(sprite_index, image_index) && !_attackDone) {
			_attackDone = true;
			with ( _attackRange ) {
				attacker = other;
				with ( instance_place(x, y, obj_player) ) 
				{
					_health -= other.attacker._damage;
				}
			}
		}
		break;
	}
	
	#endregion
}

#endregion