/// @description Insert description here
// You can write your code in this editor
//Start of tutorial sequence
if(global.errormsg){
	if(!errorprint){
		instance_create_depth(100, 100, 9, obj_errormessage);
		errorprint = true;
		cooldown = 200;
	}
	cooldown--;
	if(cooldown<0){
		instance_destroy(obj_errormessage);
		global.errormsg = false;
		errorprint = false;
		cooldown = 100;
	}
}
else if(global.tutorial&&!global.t_complete){
	if(start){
		global.is_select = true;
		instance_create_depth(100, 100, 8, obj_Tsetting);
		cooldown--;
		if(cooldown < 0){
			instance_destroy(obj_Tsetting);
			cooldown = 600;
			start = false;
			instance_create_depth(100, 100, 8, obj_Tconversationhelp);
		}
	}
	else{
		if(!continue1){
			tutorial_choice1();
		}
		else{
			tutorial_choice2();
		}
	}
}
else if(global.mainquest1&&!global.mq1_complete){
	if(!continue1){
		main1_choice1();
	}
	else if(!continue2){
		main1_choice2();
	}
	else if(!continue3&&!global.has_keys){
		main1_choice3();
	}
	else{
		if(not_displayed4){
			global.is_select = true;
			global.is_move = false;
			instance_create_depth(320, 640, 8, obj_MQ1response4);
			cooldown = 200;
			not_displayed4 = false;
		}
		else{
			cooldown--;
			if(cooldown<0){
				instance_destroy(obj_MQ1response4);
				global.mainquest1 = false;
				not_displayed1 = true;
				response_not_displayed1 = true;
				continue1 = false;
				not_displayed2 = true;
				response_not_displayed2 = true;
				global.MQ1not_displayed3 = true;
				not_displayed4 = true;
				continue2 = false;
				continue3 = false;
				global.mq1_complete = true;
			}
		}
	}
}
else if(global.mainquest2&&!global.mq2_complete){
	if(!continue1){
		main2_choice1();
	}
	else if(!continue2){
		main2_choice2();
	}
	else if(global.has_eggs&&!continue3){
		main2_choice3();
	}
}
else if(global.sidequest1&&!global.sq1_complete){
	if(!continue1){
		side1_choice1();
	}
	else if(best){
		side1_choice2a();
	}
	else{
		if(not_displayed2){
			global.is_select = true;
			global.is_move = false;
			instance_create_depth(320, 640, 8, obj_SQ1response2b);
			cooldown = 200;
			not_displayed2 = false;
		}
		else{
			cooldown--;
			if(cooldown<0){
			  instance_destroy(obj_SQ1response2b);
			  global.sidequest1 = false;
			  not_displayed1 = true;
			  response_not_displayed1 = true;
			  continue1 = false;
			  not_displayed2 = true;
			  global.user_selection = 0;
			  cooldown = 300;
			}
		}
	}
}
else if(global.sidequest2&&!global.sq2_complete){
	side2_choice1();
}
else if(global.sidequest3&&!global.sq3_complete){
	side3_choice1();
}
else if(global.ending&&!global.end_complete){
	if(!continue1){
		ending_choice1();
	}
	else{
		ending_choice2();
	}
}
else{
	global.is_select = false;
	global.is_move = true;
}

//check for pause
if keyboard_check_pressed(vk_escape)
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
	if keyboard_check_pressed(ord("R")) game_restart();
    alarm[0]++;
    alarm[1]++;
    }