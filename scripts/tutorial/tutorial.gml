// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tutorial(){
	//print text
	global.is_select = true;
	if(pause == false){
		instance_create_depth(224, 704, 8, obj_choice1);
		create1 = true;
	}
	pause = true;
	if(pause&&global.user_selection==0){
		//wait for user to input a number
	}
	else if(global.user_selection!=1&&global.user_selection!=2&&global.user_selection!=3){
		//"Please input 1, 2, or 3 to select option 1, 2, or 3.
	}
	else{
		if(create1){
			if(global.user_selection == 1){
				instance_destroy(obj_choice1);
				instance_create_depth(224, 768, 8, obj_response1inc);
			}
			else if(global.user_selection == 2){
				cooldown = 100;
			}
			else if(global.user_selection == 3){
				instance_create_depth(320, 896, 7, obj_response1c);
			}
		}
		create1 = false;
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_choice1);
		  instance_destroy(obj_response1inc);
		  instance_destroy(obj_response1c);
		  pause = true;
		  tutorial_choice2();
		}
		//move around
	}
}