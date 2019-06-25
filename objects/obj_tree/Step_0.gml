/// @description 
with (self){
	global.test=3;
	if place_meeting(x,y,obj_selector) && mouse_check_button(mb_left) && wait=0{
		global.test=2;
		hp -= 50;
		healthbar=1;
		wait=1;
		alarm[2]=room_speed*1;
		alarm[1]=room_speed*5;
		instance_create_depth(x,y,-3000,obj_hit)
	}
	if place_meeting(x,y,obj_selector){
		obj_selector.x=x;
		obj_selector.y=y;
	}
	if hp <= 0 {
		global.inventory[?"Wood"] += 1;
		instance_destroy();
	}
}