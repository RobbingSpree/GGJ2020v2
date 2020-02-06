/// @description 

y-=y_spd; //raise

image_alpha -= van_spd; //vanish

if image_alpha <=0
	instance_destroy(self); //self destruct
	
scale = 1.5;
image_xscale = scale;
image_yscale = scale;