/// @description 
var resources = 1;
var inst = instance_find(obj_ground, irandom(instance_number(obj_ground) - 1));
switch (round(random_range(0,resources-1))){
	case 0:
	with (inst){
		instance_create_depth(x,y,-2000,obj_tree);
}
	break;
	case 1:
		with (inst){
		instance_create_depth(x,y,-2000,obj_stone);
		}
	break;
} 
alarm[0]=room_speed*random_range(10,20);