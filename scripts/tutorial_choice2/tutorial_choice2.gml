// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tutorial_choice2(){
	if(create2){
		instance_create_depth(224, 704, 8, obj_choice2);
		global.user_selection = 0;
		create2 = false;
	}
	cooldown++;
	if(pause&&global.user_selection==0){
		//wait for user to input a number
	}
	else if(global.user_selection!=1&&global.user_selection!=2&&global.user_selection!=3){
		//"Please input 1, 2, or 3 to select option 1, 2, or 3.
	}
	else{
		if(giveresponse2){
			if(global.user_selection == 1){
				cooldown = -500;
			}
			else if(global.user_selection == 2){
				instance_destroy(obj_choice2);
				instance_create_depth(120, 768, 8, obj_response2inc);
			}
			else if(global.user_selection == 3){
				instance_create_depth(192, 940, 8, obj_response2c);
			}
		}
		giveresponse2 = false;
		cooldown--;
		if(cooldown<-600){
		  instance_destroy(obj_choice2);
		  instance_destroy(obj_response2inc);
		  instance_destroy(obj_response2c);
		  start = false;
		  global.user_selection = 0;
		}
	}
}