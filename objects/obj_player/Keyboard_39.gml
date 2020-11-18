/// @description Insert description here
// You can write your code in this editor
if(movement){
	if(!(x >1010)){
	x+=5
	}
	else{
		/*if(room==Main1){
			global.player_y = y;
			room_goto(Tutorial);
		}*/
		if(room==Main2){ //mq2_complete
			global.player_y = y;
			room_goto(Main1);
		}
		if(room==Home){
			global.player_y = y;
			room_goto(Main2);
		}
	}
}