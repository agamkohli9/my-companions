/// @description Insert description here
// You can write your code in this editor
//names
global.player_name = get_string("Enter your name below", "");
global.friend_name = get_string("Enter your friend's name below", "");

//game stuff
instance_create_depth(0, 0, 10, obj_game);
instance_create_depth(540, 540, 9, obj_player);
instance_create_depth(540, 400, 9, obj_friend);