///scr_received_packet(buffer)
var buffer = argument[0];
var message_id=buffer_read(buffer,buffer_u8);					//id

switch(message_id){
	case 1:														//Player2 Position
		global.player2_x=buffer_read(buffer,buffer_u16);		//x
		global.player2_y=buffer_read(buffer,buffer_u16);		//y
		break;
		
}