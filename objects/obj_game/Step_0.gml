/// @description Insert description here
// You can write your code in this editor
//Start of tutorial sequence
if(room==room_first&&!t_complete){
	tutorial = true;
}
if(tutorial){
	if(!continue1){
		tutorial_choice1();
	}
	else{
		tutorial_choice2();
	}
}
else if(global.mainquest1&&!global.mq1_complete){
	if(!continue1){
		main1_choice1();
	}
	else if(!continue2){
		main1_choice2();
	}
	/*else if(!continue3){
	}
	else{
	}*/
}
else if(global.ending&&!global.end_complete){
	if(!continue1){
		ending_choice1();
	}
	else{
		ending_choice2();
	}
}
else{
	global.is_select = false;
	global.is_move = true;
}