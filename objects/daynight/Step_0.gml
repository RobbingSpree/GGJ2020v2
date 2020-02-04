/// @description Insert description here
// You can write your code in this editor

a_second -=1;
if a_second == 0
{
	time+=1;
	if time >= day_length
	{
		time = 0;
		day = !day;
	}
	a_second = room_speed;
}

if day && alpha < 1
	alpha +=0.01;

if !day && alpha > 0
	alpha -=0.01;