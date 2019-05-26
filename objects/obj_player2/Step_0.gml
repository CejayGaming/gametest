/// @description 
if global.host{
	if obj_host.socket=="noone"{
		instance_destroy();
	}
}
x=global.player2_x;
y=global.player2_y;