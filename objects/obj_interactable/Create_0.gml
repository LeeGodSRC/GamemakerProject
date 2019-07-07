#region interact type

enum interactType {
	
	PUSHABLE, PUSH_AND_TAKEABLE, TAKEABLE, LOCK
	
}

#endregion

#region item type

enum itemType {
	
	BLOCK, WEAPON, OTHER
	
}

#endregion

#region vars

_owner = noone
_type = interactType.LOCK
_item = itemType.OTHER
_hsp = 0
_vsp = 0
_follow_mouse = false

_x_offset = -15
_y_offset = -25
_name = "Object"

#endregion