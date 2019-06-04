switch ( _status ) {
	
	#region IDLE
	case status.IDLE: {
		sprite_hands = spr_hands
		break;
	}
	#endregion
	
	#region WALKING
	case status.WALKING: {
		break;
	}
	#endregion
	
	#region ATTACK
	case status.ATTACK: {
		if ( _cooldown == 0 ) {
			_status = status.IDLE;
		} else {
			_cooldown -= 1;
			sprite_hands = spr_hands_hit;
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