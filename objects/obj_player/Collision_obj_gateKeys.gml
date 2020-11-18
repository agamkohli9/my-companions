/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E"))){ 
	if(!global.MQ1not_displayed3){//if the 3rd step of the quest hasn't been referenced yet, cannot pick this up
		global.has_keys = true;
		instance_destroy(obj_gateKeys);
	}
	else{
		global.errormsg = true;
	}
}