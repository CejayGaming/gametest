/// @description 
buffer_seek(buffer,buffer_seek_start,0);
buffer_write(buffer,buffer_u8,1);								//Player Position
buffer_write(buffer,buffer_u16,obj_player.x);
buffer_write(buffer,buffer_u16,obj_player.y);
network_send_packet(socket,buffer,buffer_tell(buffer));