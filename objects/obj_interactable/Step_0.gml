
#region owner avaliable
if ( _owner != noone ) {
	
	x = _owner.x + _x_offset;
	y = _owner.y + _y_offset;
	
	if ( _follow_mouse ) {
		
		direction = point_direction(x, y, mouse_x, mouse_y);
		image_angle = direction;
		
	}
	
} else {
	
	x += _hsp * -direction;
	y += _vsp;

	_hsp -= 0.3;
	_vsp -= 0.3;
	
	if ( _hsp < 0.0 ) _hsp = 0;
	if ( _vsp < 0.0 ) _vsp = 0;
	
}

#endregion