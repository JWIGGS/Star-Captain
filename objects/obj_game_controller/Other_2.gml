/// @description initialize game

#macro spaceshipMaxSize 1024
#macro spaceshipSpriteOffset 64


#macro displayWidth 1280
#macro displayHeight 780

#macro color_blue	make_color_rgb(109,168,255)
#macro color_red	make_color_rgb(251,0,7)
#macro color_green	make_color_rgb(55,209,125)
#macro color_dark	make_color_rgb(20,20,20)
#macro color_hull	make_color_rgb(100,100,100)



//#macro inventoryStack 99

#macro gridSize 32



global.hullConversion[0] = "012345678";
global.hullConversion[1] = "258147036";
global.hullConversion[2] = "876543210";
global.hullConversion[3] = "630741852";
global.hullConversion[4] = "210543876";
global.hullConversion[5] = "036147258";
global.hullConversion[6] = "678345012";
global.hullConversion[7] = "852741630";

show_debug_overlay(true);
