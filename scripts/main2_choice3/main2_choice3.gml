// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function main2_choice3(){
	global.is_select = true;
	if(not_displayed3){
		instance_create_depth(320, 640, 8, obj_MQ2choice3);
		global.user_selection = 0;
		not_displayed3 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2){
	//"Please input 1 or 2 to select option 1 or 2.
	}
	else{
		if(response_not_displayed3){
			if(global.user_selection==2){
			instance_destroy(obj_MQ1choice2);
			instance_create_depth(320, 640, 8, obj_MQ2response3inc);
			cooldown = 200;
			}
			else{
				cooldown = 50;
			}
		}
		response_not_displayed3 = false;
		cooldown--;
		if(cooldown<0){
			instance_destroy(obj_MQ2choice3);
			instance_destroy(obj_MQ2response3inc);
			continue3 = true;
			if(global.user_selection == 2){
				continue3 = false;
				not_displayed3 = true;  
				response_not_displayed3 = true;
		    }
			else{
				global.numCompanions++;
				global.mq2_complete = true;
				not_displayed1 = true;
				response_not_displayed1 = true;
				continue1 = false;
				global.MQ2not_displayed2 = true;
				not_displayed2 = true;
				response_not_displayed2 = true;
				not_displayed3 = true;
				not_displayed4 = true;
				continue2 = false;
				continue3 = false;
			}
		}
	}
}