/// @desc move_state
// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get Length
if (xaxis == 0) && (yaxis == 0) {
	len = 0;	
} else {
	len = spd;
}

// Get the speed variables
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Horizontal Collisions
if !place_meeting(x+hspd, y, obj_ground){
	switch (xaxis) {
		case -1:
		instance_create_depth(x,y,-1004,obj_wall);
		break;
		case 1:
		instance_create_depth(x,y,-1002,obj_wall);
		break;
	}
}


// Vertical Collisions
if !place_meeting(x, y+vspd, obj_ground) {
	switch (yaxis) {
		case -1:
		instance_create_depth(x,y,-1001,obj_wall);
		break;
		case 1:
		instance_create_depth(x,y,-1003,obj_wall);
		break;
	}
}