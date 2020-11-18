/// @description Insert description here
// You can write your code in this editor
if(movement){
	if(!(x <6)){
	x-=5
	}
	else{
		if(room==Tutorial){
			global.player_y = y;
			room_goto(Main1);
		}
		if(room==Main1&&global.mq1_complete){
			global.player_y = y;
			room_goto(Main2);
		}
		if(room==Main2&&global.mq2_complete){
			global.player_y = y;
			room_goto(Home);
		}
	}
}

