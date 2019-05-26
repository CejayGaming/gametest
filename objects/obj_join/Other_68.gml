/// @description 
var type_event=async_load[?"type"];
switch(type_event){
	case network_type_data:
		//Handle the data
		var buffer = async_load[?"buffer"];
		buffer_seek(buffer, buffer_seek_start, 0);
		scr_received_packet(buffer);
		break;
}