// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function main1_choice3(){
	global.is_select = true;
	if(global.MQ1not_displayed3){
		instance_create_depth(320, 640, 8, obj_MQ1choice3_item);
		global.user_selection = 0;
		global.MQ1not_displayed3 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2){
	//"Please input 1 or 2 to select option 1 or 2.
	}
	else{
		if(response_not_displayed3){
			if(global.user_selection==2){
			instance_destroy(obj_MQ1choice3_item);
			instance_create_depth(320, 640, 8, obj_MQ1choice3inc);
			cooldown = 200;
			}
			else{
				cooldown = 50;
			}
		}
		response_not_displayed3 = false;
		cooldown--;
		if(cooldown<0){
			instance_destroy(obj_MQ1choice3_item);
			instance_destroy(obj_MQ1choice3inc);
			if(global.user_selection!=2){
				global.mainquest1 = false;
				global.is_select = false;
				global.is_move = true;
			}
			else{
				global.MQ1not_displayed3 = true;
				response_not_displayed3 = true;
			}
		}
	}
}