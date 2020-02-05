/// @description Insert description here
// You can write your code in this editor
//need to make look a little nicer later
with (grid)
{
	
	//show the result hint
	if holding != noone && g[mgx,mgy] >-1
	{
		draw_sprite(bg_box,0,300,736);
		draw_sprite_ext(cell_edge_spr,0,x+mgx*cell_+cell_/2,y+mgy*cell_+cell_/2,1,1,closest_edge,c_white,1);
		//draw holding
		draw_sprite(bg_box,0,150,850);
		draw_text(130,850,"Holding:");
		draw_sprite_ext(high_res_items,holding.image_index,150+100,850,scale,scale,0,c_white,1);
		draw_text(130,900,get_name(holding.image_index));
		draw_sprite(arrow_spr,0,130+180,830);
		//draw mouse over
		draw_set_halign(fa_right);
		draw_sprite(bg_box,0,450,850);
		draw_text(630,850,"Over:");
		draw_sprite_ext(high_res_items,g[mgx,mgy],450,850,scale,scale,0,c_white,1);
		draw_text(630,900,get_name(g[mgx,mgy]));
		draw_sprite_ext(arrow_spr,0,130+330,830,-1,1,0,c_white,1);
		draw_set_halign(fa_left);
		//draw results
		draw_set_font(ui_fnt);
		var str = "Result:";
		draw_text(300,736,str);
		var temp_result =  ds_grid_get(combo_table,holding.image_index,g[mgx,mgy]);
		if temp_result != -1 && unlocks[holding.image_index,g[mgx,mgy]] >0
		{
			var _scale = 0.1;
			draw_sprite_ext(high_res_items,temp_result,300+100,736,_scale,_scale,0,c_white,1);
			draw_set_font(ui_fnt);
			draw_text(300+50,736+64,get_name(temp_result));
		}
		else if temp_result == -1 && unlocks[holding.image_index,g[mgx,mgy]] <0
		{
			draw_sprite(nothing_spr,0,300+100,736);
			draw_set_font(ui_fnt);
			draw_set_color(c_black);
			draw_text(300+50,736+64,"Nothing");
			draw_set_color(c_white);
		}
		else
		{
			draw_sprite(question_spr,0,300+100,736);
			draw_set_font(ui_fnt);
			draw_text(300+50,736+64,"Unknown");
		}
		
		
		//draw descriptions
		draw_sprite(descr_board,0,80,950);
	}
}