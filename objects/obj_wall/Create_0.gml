/// @description 
switch (depth) {
	case "-1001":
		object_set_sprite(obj_wall,spr_wall_up);
		global.test +=1;
	break;
	case "-1002":
		object_set_sprite(obj_wall,spr_wall_right);
		global.test2 +=1;
	break;
	case "-1003":
		object_set_sprite(obj_wall,spr_wall_down);
		global.test3 +=1;
	break;
	case "-1004":
		object_set_sprite(obj_wall,spr_wall_left);
		global.test4 +=1;
	break;
}
show_debug_message(x/64);
show_debug_message(y/64);