var disconnectingSocket=argument[0];
var disconnectingIp=argument[1];
var buffer = buffer_create(1024,buffer_fixed,1);
var i = 0;
repeat (ds_list_size(global.ipList)) {
	buffer_seek(buffer,buffer_seek_start,0);
	buffer_write(buffer,buffer_u8,3);
	buffer_write(buffer,buffer_text,disconnectingSocket);
	buffer_write(buffer,buffer_text,disconnectingIp);
	network_send_packet(ds_list_find_value(global.socketList,i),buffer,buffer_tell(buffer));
	i += 1;
}
buffer_delete(buffer);
