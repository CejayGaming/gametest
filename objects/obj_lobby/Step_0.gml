/// @description 
if keyboard_check(ord("H")){
	instance_create_layer(0,0,"Instances",obj_host);
	instance_destroy();
}
if keyboard_check(ord("J")){
	instance_create_layer(0,0,"Instances",obj_join);
	instance_destroy();
}
if keyboard_check(ord("S")){
	room_goto(1);
	instance_destroy();
}