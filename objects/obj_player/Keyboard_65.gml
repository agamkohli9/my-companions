/// @description Insert description here
// You can write your code in this editor
if(movement){
	if(!(x <6)){
	x-=5
	}
	else{
		if(room_get_name(room)=="Tutorial"){
			global.player_y = y;
			room_goto_next();
		}
		if(room_get_name(room)=="Main1"&&global.mq1_complete){
			global.player_y = y;
			room_goto(2);
		}
	}
}

