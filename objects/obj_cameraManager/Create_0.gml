/// @description Insert description here
// You can write your code in this editor

#region camera
camera = camera_create()

_width = 720;
_height = 480;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0)
var pm = matrix_build_projection_ortho(_width, _height, 1, 10000)

camera_set_view_mat(camera, vm)
camera_set_proj_mat(camera, pm)

view_camera[0] = camera

follow = obj_player
xTo = x
yTo = y

shake = false;
shakeDur = 0;
shakeForce = 0;

zoom = false;
zoomDur = 0;
zoomForce = 0;
zoomDurNoChange = 0;

cursor_sprite = spr_mouse_cursor;
window_set_cursor(cr_none);
#endregion

#region grid

var cell_width = 32;
var cell_height = 32;

var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0, 0, hcells, vcells, cell_width, cell_height);

mp_grid_add_instances(global.grid, obj_solid, false);

#endregion