/// @description Check for clients and data
var type_event=async_load[?"type"];
switch(type_event){
	case network_type_connect:
		//Add the client to socket and ip list
		ds_list_add(global.socketList,async_load[?"socket"]);
		ds_list_add(global.ipList,async_load[?"ip"]);
		global.newIp=async_load[?"ip"];
		instance_create_layer(0,0,"Instances",obj_player2);
		scr_client_connect(async_load[?"socket"],async_load[?"ip"]);
		break;
	
	case network_type_disconnect:
		//Remove the client from the socket variable
		ds_list_delete(global.socketList,ds_list_find_index(global.socketList,async_load[?"socket"]));
		ds_list_delete(global.ipList,ds_list_find_index(global.ipList,async_load[?"ip"]));
		scr_client_disconnect(async_load[?"socket"],async_load[?"ip"]);
		break;
	
	case network_type_data:
		//Handle the data
		var buffer = async_load[?"buffer"];
		buffer_seek(buffer, buffer_seek_start, 0);
		global.fromIp=async_load[?"ip"];
		scr_received_packet(buffer);
		break;
}