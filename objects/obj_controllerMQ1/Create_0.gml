/// @description Insert description here
// You can write your code in this editor
//instance_create_depth(0, 0, 10, obj_game);
if(!global.mq1_complete){
	instance_create_depth(1000, global.player_y, 9, obj_player);
	instance_create_depth(800, 100, 9, obj_gateKeys);
}
else{
	instance_create_depth(5, global.player_y, 9, obj_player);
}

instance_create_depth(540, 400, 9, obj_lilith);

instance_create_depth(480, 850, 9, obj_josh);
