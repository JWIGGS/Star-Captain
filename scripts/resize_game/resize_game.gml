var dWidth = argument0; ///@param displayWidth
var dHeight = argument1; ///@param displayHeight

var height = window_get_height();
var width = window_get_width();

var heightRatio = height/dHeight;
var widthRatio = width/dWidth;

var widthBeingDisplayed = round(dWidth*heightRatio);

display_set_gui_maximise(heightRatio,heightRatio,(width-widthBeingDisplayed)/2,0);