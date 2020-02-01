/// @description pick up item

if mouse_x > x && mouse_y > y && mouse_x < x+wid*cell_ && mouse_y < x+wid*cell_ && holding == noone//&& !object_exists(pickup)
{
	var temp = instance_create_layer(mouse_x,mouse_y,"pickups",pickup);
	temp.image_index = g[mgx,mgy];
	holding = temp;
	g[mgx,mgy]=noone;
	pickup_x = mgx;
	pickup_y = mgy;
}
