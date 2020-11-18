// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function side2_choice1(){
	//print text
	global.is_select = true;
	if(not_displayed1){
		instance_create_depth(320, 640, 8, obj_SQ2choice1);
		global.user_selection=0;
		not_displayed1 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2&&global.user_selection!=3){
		//"Please input 1, 2, or 3 to select option 1, 2, or 3.
	}
	else{
		if(response_not_displayed1){
			if(global.user_selection == 1){
				instance_destroy(obj_SQ2choice1);
				instance_create_depth(320, 640, 8, obj_SQ2response1a);
				cooldown = 200;
			}
			else if(global.user_selection == 2){
				instance_destroy(obj_SQ2choice1);
				instance_create_depth(320, 640, 7, obj_SQ2response1b);
				cooldown = 200;
			}
			else if(global.user_selection == 3){
				instance_destroy(obj_SQ2choice1);
				instance_create_depth(320, 640, 7, obj_SQ2response1c);
				cooldown = 200;
			}
			response_not_displayed1 = false;
		}
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_SQ2choice1);
		  instance_destroy(obj_SQ2response1a);
		  instance_destroy(obj_SQ2response1b);
		  instance_destroy(obj_SQ2response1c);
		  global.sq2_complete = true;
		  if(global.user_selection == 3){
			global.sq2_complete = false;
			not_displayed1 = true;  
			response_not_displayed1 = true;
		  }
		  if(global.user_selection == 2){
			  global.sq2_complete = false;
			  global.sidequest2 = false;
			  not_displayed1 = true;
			  response_not_displayed1 = true;
			  global.user_selection = 0;
		  }
		  cooldown = 600;
		}
	}
}