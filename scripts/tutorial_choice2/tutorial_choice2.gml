// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function tutorial_choice2(){
	if(not_displayed2){
		instance_create_depth(320, 640, 8, obj_Tchoice2);
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
				instance_destroy(obj_Tchoice2);
				instance_create_depth(320, 640, 8, obj_Tresponse2inc);
				cooldown = 300;
			}
			else if(global.user_selection == 3){
				instance_destroy(obj_Tchoice2);
				instance_create_depth(320, 640, 8, obj_Tresponse2c);
				cooldown = 100;
			}
			response_not_displayed2 = false;
		}
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_Tchoice2);
		  instance_destroy(obj_Tresponse2inc);
		  instance_destroy(obj_Tresponse2c);
		  if(global.user_selection == 2){
			not_displayed2 = true;  
			response_not_displayed2 = true;
		  }
		  else{
		    instance_destroy(obj_Tconversationhelp);
		    instance_create_depth(100, 100, 8, obj_Tmovementhelp);
		  }
		  if(cooldown < -250){
		  	  instance_destroy(obj_Tmovementhelp);
			  global.tutorial = false;
			  global.t_complete = true;
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