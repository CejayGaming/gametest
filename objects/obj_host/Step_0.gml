/// @description 
var i = 0;
repeat (ds_list_size(global.ipList)) {
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,1);								//Player Position
	buffer_write(buffer,buffer_u16,obj_player.x);
	buffer_write(buffer,buffer_u16,obj_player.y);
	network_send_packet(ds_list_find_value(global.socketList,i),buffer,buffer_tell(buffer));
	i +=1;
}