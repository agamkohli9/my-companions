/// @description Insert description here
// You can write your code in this editor
//instance_create_depth(0, 0, 10, obj_game);
if(!global.mq2_complete){
	instance_create_depth(1000, global.player_y, 9, obj_player);
	instance_create_depth(60, 550, 9, obj_eggs);
}
else{
	instance_create_depth(5, global.player_y, 9, obj_player);
}

instance_create_depth(540, 550, 9, obj_margret);

instance_create_depth(350, 900, 9, obj_penny);
instance_create_depth(400, 900, 9, obj_well);