/// @description Insert description here
// You can write your code in this editor
//menu_x =x;
//menu_y =y;
button_h =72;

//buttons
button[0] = "Start";
button[1] = "Controls";
button[2] = "Exit";

buttons = array_length(button)

menu_index =0;
last_selected =0;

global.player_name = string(get_string_async("Enter your name below", "Player"));
global.friend_name = string(get_string_async("Enter your friend's name below", "Friend"));