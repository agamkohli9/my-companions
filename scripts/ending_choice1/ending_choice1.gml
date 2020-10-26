// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ending_choice1(){
	//print text
	global.is_select = true;
	if(not_displayed1){
		instance_create_depth(320, 640, 8, obj_ENDchoice1);
		not_displayed1 = false;
	}
	if(global.user_selection!=1&&global.user_selection!=2&&global.user_selection!=3){
		//"Please input 1, 2, or 3 to select option 1, 2, or 3.
	}
	else{
		if(response_not_displayed1){
			if(global.user_selection == 1){
				instance_destroy(obj_ENDchoice1);
				instance_create_depth(320, 640, 8, obj_ENDresponse1inc);
				cooldown = 300;
			}
			else if(global.user_selection == 2){
				cooldown = 50;
			}
			else if(global.user_selection == 3){
				instance_destroy(obj_ENDchoice1);
				instance_create_depth(320, 640, 7, obj_ENDresponse1c);
				cooldown = 150;
			}
			response_not_displayed1 = false;
		}
		cooldown--;
		if(cooldown<0){
		  instance_destroy(obj_ENDchoice1);
		  instance_destroy(obj_ENDresponse1inc);
		  instance_destroy(obj_ENDresponse1c);
		  continue1 = true;
		  cooldown = 600;
		}
		//move around
	}
}