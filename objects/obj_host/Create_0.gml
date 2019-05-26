/// @description Initialize
global.host=true;
socket="noone";
server=network_create_server(network_socket_tcp,7777,2);
room_goto(1);
var size= 1024;
var type = buffer_fixed;
var alignment=1;
buffer = buffer_create(size,type,alignment);