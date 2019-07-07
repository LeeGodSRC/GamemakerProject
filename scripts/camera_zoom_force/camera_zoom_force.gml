///camera_zoom(amount)
var amount = 1 + argument[0];

camera_set_view_size(obj_cameraManager.camera, obj_cameraManager._width * amount, obj_cameraManager._height * amount);