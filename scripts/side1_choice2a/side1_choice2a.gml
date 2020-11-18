// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function side1_choice2a(){
	if(not_displayed2){
		instance_create_depth(320, 640, 8, obj_SQ1choice2);
		global.user_selection = 0;
		not_displayed2 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2&&global.user_selection!=3){
		//"Please input 1, 2, or 3 to select option 1, 2, or 3.
	}
	else{
		if(response_not_displayed2){
			if(global.user_selection == 1){
				cooldown = 100;
				instance_destroy(obj_SQ1choice2);
				instance_create_depth(320, 640, 8, obj_SQ1response2c);
			}
			else if(global.user_selection == 2){
				instance_destroy(obj_SQ1choice2);
				instance_create_depth(320, 640, 8, obj_SQ1response2inc);
				cooldown = 300;
			}
			else if(global.user_selection == 3){
				cooldown = 50;
			}
			response_not_displayed2 = false;
		}
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_SQ1choice2);
		  instance_destroy(obj_SQ1response2inc);
		  instance_destroy(obj_SQ1response2c);
		  if(global.user_selection == 2){
			not_displayed2 = true;  
			response_not_displayed2 = true;
		  }
		  else{
			  global.numCompanions++;
			  global.sidequest1 = false;
			  global.sq1_complete = true;
			  not_displayed1 = true;
			  response_not_displayed1 = true;
			  continue1 = false;
			  not_displayed2 = true;
			  response_not_displayed2 = true;
			  global.user_selection = 0;
			  cooldown = 300;
		  }
		}
	}
}