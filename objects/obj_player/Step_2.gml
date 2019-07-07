switch ( _status ) {
	
	#region IDLE
	case status.IDLE: {
		sprite_hands = spr_hands
		_slide_speed = min(_slide_speed + 0.02, 1.5);
		break;
	}
	#endregion
	
	#region WALKING
	case status.WALKING: {
		break;
	}
	#endregion
	
	#region SLIDING
	
	case status.SLIDING: {
		break;
	}
	
	#endregion
	
	#region ATTACK
	case status.ATTACK: {
		if ( _cooldown == 0 ) {
			_status = status.IDLE;
			_combat = noone;
		} else {
			_cooldown -= 1;
		}
		break;
	}
	#endregion
	
	#region TAKING_DAMAGE
	case status.TAKING_DAMAGE: {
		break;
	}
	#endregion
	
	#region DEATH
	case status.DEATH: {
		break;
	}
	#endregion
	
}