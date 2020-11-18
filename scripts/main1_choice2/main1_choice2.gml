// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function main1_choice2(){
	//print text
	global.is_select = true;
	if(not_displayed2){
		instance_create_depth(320, 640, 8, obj_MQ1choice2);
		global.user_selection = 0;
		not_displayed2 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2){
		//"Please input 1 or 2 to select option 1 or 2..
	}
	else{
		if(response_not_displayed2){
			if(global.user_selection == 1){
				instance_destroy(obj_MQ1choice2);
				instance_create_depth(320, 640, 8, obj_MQ1response2inc);
				cooldown = 300;
			}
			else if(global.user_selection == 2){
				instance_destroy(obj_MQ1choice2);
				instance_create_depth(320, 640, 7, obj_MQ1response2c);
				cooldown = 100;
			}
			response_not_displayed2 = false;
		}
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_MQ1choice2);
		  instance_destroy(obj_MQ1response2inc);
		  instance_destroy(obj_MQ1response2c);
		  continue2 = true;
		  if(global.user_selection == 1){
			continue2 = false;
			not_displayed2 = true;  
			response_not_displayed2 = true;
		  }
		  cooldown = 200;
		}
	}
}