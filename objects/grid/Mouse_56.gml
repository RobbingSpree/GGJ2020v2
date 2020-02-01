/// @description 

if mouse_x > x && mouse_y > y && mouse_x < x+wid*cell_ && mouse_y < x+wid*cell_ && holding != noone
{
	var what_im_holding = holding.image_index;
	combo_items(g,what_im_holding,g[mgx,mgy],mgx,mgy);
	instance_destroy(holding);
	holding = noone;
	pickup_x = -1;
	pickup_y = -1;
}