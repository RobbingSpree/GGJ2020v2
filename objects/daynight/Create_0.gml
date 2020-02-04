/// @description Insert description here
// You can write your code in this editor

//setup clock

//setup surface
night_cycle_surf = surface_create(room_width, room_height);
alpha = 1;
debug = false;

x=grid.x;
y=grid.y;

time = 0;
day_length = 10; //number of seconds between dawn and dusk
a_second = room_speed;
day = false; //if it is currently daytime or not