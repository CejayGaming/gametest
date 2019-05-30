/// @description Initialize
socket=network_create_socket(network_socket_tcp);
connection=network_connect(socket,"192.168.1.6",7777);
room_goto(1);
var size= 1024;
var type = buffer_fixed;
var alignment=1;
buffer = buffer_create(size,type,alignment);
global.socketList=ds_list_create();
global.ipList=ds_list_create();