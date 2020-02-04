
wid = 10; //width of grid
hei = 10; //height of grid
cell_ = 64; //cell width and height
scale = 0.08; //scale to shrink the high res sprites
g=[]; //grid all items are stored in
mgx = 0; //mouse grid pos x
mgy = 0; //mouse grid pos y
holding = noone; //the instance the 
pickup_x = -1; //cell the item was picked up from to return to
pickup_y = -1; //cell the item was picked up from to return to
closest_edge = 0; //the closest edge the mouse is to the current cell
poo_stks = 0; //poo sticks in invintory
rck_axe = 0; //rock axes in invintory
fire = false; //if a fire is currently burning

sounds = audio_emitter_create();
audio_play_sound_on(sounds,bg_music,true,0);

animate = 0; //frame counter
ani_loop = 10; //frams until the fire animation advances
fire_ani = 0; //current frame of the fire animation

//inport combo table
combo_table = load_csv("Crafting Tree - combo_csv.csv")
ct_size = 52;
combo_table = parse_combo_table_data(combo_table);

for (var xx=0; xx<wid; xx++)
{
	for (var yy=0; yy<hei; yy++)
	{
		g[xx,yy]=noone; //intalize the grid
	}
}

g=fill_the_board(g,wid,hei);

//setup unlocks
unlocks = [];
for (var i=0; i<ct_size; i++)
{
	for (var k=0; k<ct_size; k++)
	{
		unlocks[i,k]=0;
	}
}