/// @description 

if mouse_x > x && mouse_y > y && mouse_x < x+wid*cell_ && mouse_y < x+wid*cell_
{
	mgx = floor((mouse_x-x)/cell_);
	mgy = floor((mouse_y-y)/cell_);
	if holding != noone
	{
		var ex = x+mgx*cell_+cell_/2;
		var ey = y+mgy*cell_+cell_/2;
		closest_edge = point_direction(ex,ey,mouse_x,mouse_y);
		closest_edge = round(closest_edge / 90) * 90;
	}
}

animate++;
if animate >= ani_loop
{
	fire_ani+=1;
	if fire_ani ==3
		fire_ani = 0;
	animate=0;
}