/// @description 

if mouse_x > x && mouse_y > y && mouse_x < x+wid*cell_ && mouse_y < x+wid*cell_ && holding != noone 
{
	if g[mgx,mgy]!= noone
	{
		var what_im_holding = holding.image_index;
		var result = combo_items(g,what_im_holding,g[mgx,mgy],mgx,mgy);
		if size_results(result) > 1
		{
			if size_results(result)>2
			{
				move_cells(closest_edge/90);
				closest_edge +=2
					if closest_edge > 4
						closest_edge -=4;
				move_cells(closest_edge/90);
			} else {
				move_cells(closest_edge/90);
			}
		}
		instance_destroy(holding);
		holding = noone;
		pickup_x = -1;
		pickup_y = -1;
	} else {
		g[pickup_x,pickup_y]=holding.image_index;
		instance_destroy(holding);
		holding = noone;
		pickup_x = -1;
		pickup_y = -1;
	}
}
