/// @description Insert description here
// You can write your code in this editor
if(object_exists(obj_game)){
if(global.is_select){
	selection = true;
	movement = false;
}
else if(global.is_move){
	movement = true;
	selection = false;
}
}