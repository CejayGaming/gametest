var connectingSocket=argument[0];
var connectingIp=argument[1];
var buffer = buffer_create(1024,buffer_fixed,1);
var i = 0;
repeat (ds_list_size(global.ipList)-1) {
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,2);
	buffer_write(buffer,buffer_u8,connectingSocket);
	buffer_write(buffer,buffer_string,connectingIp);
	network_send_packet(ds_list_find_value(global.socketList,i),buffer,buffer_tell(buffer));
	i += 1;
}
buffer_delete(buffer);
var buffer = buffer_create(1024,buffer_fixed,1);
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,0);
	network_send_packet(connectingSocket,buffer,buffer_tell(buffer));
buffer_delete(buffer);