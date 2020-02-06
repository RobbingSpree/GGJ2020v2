var result = argument0;
var on_ground = argument1;
var holding = argument2;

var combo = 0;
var absorb = 1;
var growth = 2;
var fatal_choice = 3;
var failure = 4;

if result == item.Corpse || result == item.Paste
	return fatal_choice;

if result == -1
	return failure;

if result == on_ground || result == holding
	return absorb;

if string_count("Grass",get_name(result)) || string_count("Animal",get_name(result)) || string_count("Crop",get_name(result)) || string_count("Flower",get_name(result))
	return growth;

return combo;