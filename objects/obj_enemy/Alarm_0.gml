/// @description Idle walking

if ( _status != enemyStatus.IDLE ) {
	return;
}

_status = enemyStatus.WALKING;
_idle_x = x + choose(-150, 150);
_idle_y = y + choose(-150, 150);