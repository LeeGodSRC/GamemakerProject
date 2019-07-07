x += (xTo - x) / 25
y += (yTo - y) / 25

if (follow != noone)
{

	xTo = follow.x
	yTo = follow.y
	
	if ( distance_to_object(follow) > 250 )
	{
		x = xTo;
		y = yTo;
	}
} else
{
	xTo = 0;
	yTo = 0;
}

if ( shake ) {
	shakeDur--;
	x += choose(-shakeForce, shakeForce);
	y += choose(-shakeForce, shakeForce);
	if(shakeDur <= 0){
        shake = false;
    }
}

if ( zoom ) {
	zoomDur--;
	camera_zoom_force(zoomForce);
	zoomForce *= (zoomDur / zoomDurNoChange);
	if (zoomDur <= 0) {
		zoom = false;
		camera_zoom_force(0);
	}
}

var vm = matrix_build_lookat (x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm)