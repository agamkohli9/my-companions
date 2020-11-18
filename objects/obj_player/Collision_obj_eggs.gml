/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))){ 
	if(!global.MQ2not_displayed2){//if the 2nd step of the quest hasn't been referenced yet, cannot pick this up
		global.has_eggs = true;
		instance_destroy(obj_eggs);
	}
	else{
		global.errormsg = true;
	}
}