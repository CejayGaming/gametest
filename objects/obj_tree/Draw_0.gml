/// @description 
with (self) {
	draw_sprite(spr_tree,image_index,x,y);
	var healthbarX = obj_camera.x-x+1024;
	var healthbarY = obj_camera.y-y+576;
if(healthbar == 1)
{
	draw_healthbar(x-75, y+50, x+75, y+75, hp/200*100, $FF000000, $FF0000CC & $FFFFFF, $FF44E567 & $FFFFFF, 1, true, true);
global.textCameraX=x-healthbarX;
global.textCameraY=healthbarY;
}
}
