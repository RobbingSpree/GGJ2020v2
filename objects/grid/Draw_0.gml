/// @description draw grid

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		
		draw_sprite(grid_spr,0,x+xx*cell_,y+yy*cell_);
		if g[xx,yy] >-1
		{
				draw_sprite_ext(high_res_items,g[xx,yy],x+xx*cell_,y+yy*cell_,scale,scale,0,c_white,1);
		}
		else if g[xx,yy] ==-2
			draw_sprite(fire_spr,fire_ani,x+xx*cell_,y+yy*cell_);
	}
}

if holding != noone && g[mgx,mgy] >-1
{
	draw_sprite(bg_box,0,288,736)
	draw_sprite_ext(cell_edge_spr,0,x+mgx*cell_+cell_/2,y+mgy*cell_+cell_/2,1,1,closest_edge,c_white,1);
	//show results
	draw_set_font(ui_fnt);
	var str = "Restul:";
	draw_text(288,736,str);
	var temp_result =  ds_grid_get(combo_table,holding.image_index,g[mgx,mgy]);;
	
	if temp_result != -1 && unlocks[holding.image_index] >0
		draw_sprite_ext(high_res_items,temp_result,288+100,736,scale,scale,0,c_white,1);
	else 
		draw_sprite(question_spr,0,288+100,736);
}

//debug
/*
draw_set_color(c_red);
draw_text(20,20,holding);
draw_text(20,40,temp_result);