/// @description 
if !isHostIp{
	if ds_list_find_index(global.ipList,clientIp)==-1 {
		instance_destroy();
	}
}
	if global.fromIp==clientIp{
x=global.player2_x;
y=global.player2_y;
	}