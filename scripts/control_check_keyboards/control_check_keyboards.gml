if ( mouse_check_button_pressed(mb_left) ) { control_leftclick(); }
if ( keyboard_check_pressed(vk_space) ) { control_space(); }
if ( keyboard_check_pressed(ord("Q")) ) { control_Q(); }
if ( keyboard_check_pressed(vk_shift) ) { control_shift(); }
if ( keyboard_check_released(vk_shift) ) { control_shift_released(); }

control_inventory_mouse_scroll();