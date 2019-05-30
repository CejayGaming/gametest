///scr_received_packet(buffer)
var buffer = argument[0];
var message_id=buffer_read(buffer,buffer_u8);					//id

switch(message_id){
	case 0:														//getHostIp
		global.hostIp=global.fromIp;
		global.newIp=global.hostIp;
		instance_create_layer(0,0,"instances",obj_player2);
		break;
	case 1:														//Player2 Position
		global.player2_x=buffer_read(buffer,buffer_u16);		//x
		global.player2_y=buffer_read(buffer,buffer_u16);		//y
		break;
	case 2:														//New Connection
		var newSocket = buffer_read(buffer,buffer_text);
		global.newIp = buffer_read(buffer,buffer_text)
		ds_list_add(global.socketList,newSocket);				
		ds_list_add(global.ipList,global.newIp);
		instance_create_layer(0,0,"Instances",obj_player2);
		break;
	case 3:														//Disconnection
		ds_list_delete(global.socketList,ds_list_find_index(global.socketList,buffer_read(buffer,buffer_text)));
		ds_list_delete(global.ipList,ds_list_find_index(global.ipList,buffer_read(buffer,buffer_text)));
		break;
}