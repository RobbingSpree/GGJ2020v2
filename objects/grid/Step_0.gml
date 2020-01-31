/// @description 

if mouse_x > x && mouse_y > y && mouse_x < x+wid*cell_ && mouse_y < x+wid*cell_
{
	mgx = floor((mouse_x-x)/cell_);
	mgy = floor((mouse_y-y)/cell_);
}
