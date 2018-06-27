/// @description 

image_xscale = alarm[0]/life;
image_yscale = image_xscale;
image_alpha = 1-(exp(-5*image_xscale*exp(image_xscale)));
image_blend = make_color_rgb(255-(image_alpha*174),255-(image_alpha*126),255-(image_alpha*35))
