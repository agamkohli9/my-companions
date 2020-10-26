// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ending_choice2(){
	if(not_displayed2){
		instance_create_depth(320, 640, 8, obj_ENDchoice2);
		global.user_selection = 0;
		not_displayed2 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2&&global.user_selection!=3){
		//"Please input 1, 2, or 3 to select option 1, 2, or 3.
	}
	else{
		if(response_not_displayed2){
			if(global.user_selection == 1){
				cooldown = 50;
			}
			else if(global.user_selection == 2){
				instance_destroy(obj_ENDchoice2);
				instance_create_depth(320, 640, 8, obj_ENDresponse2c);
				cooldown = 150;
			}
			else if(global.user_selection == 3){
				instance_destroy(obj_ENDchoice2);
				instance_create_depth(320, 640, 8, obj_ENDresponse2inc);
				cooldown = 150;
			}
			response_not_displayed2 = false;
		}
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_ENDchoice2);
		  instance_destroy(obj_ENDresponse2inc);
		  instance_destroy(obj_ENDresponse2c);
		  instance_create_depth(10, 10, 10, obj_end);
		  global.ending = false;
		  not_displayed1 = true;
		  response_not_displayed1 = true;
		  continue1 = false;
		  not_displayed2 = true;
		  response_not_displayed2 = true;
		  global.user_selection = 0;
		  global.end_complete = true;
		}
	}
}