/// @description Insert description here
// You can write your code in this editor
//moving keys
keyLeft = keyboard_check(vk_left);
keyRight = keyboard_check(vk_right);
keyUp = keyboard_check(vk_up);
keyDown = keyboard_check(vk_down);
//movement basics
inputDir = point_direction(0,0,keyDown - keyUp, keyLeft - keyRight);//Directions
inputMag = (keyRight - keyLeft != 0)||(keyUp - keyDown != 0);//moving speed

if(object_exists(obj_game)){
if(global.is_select){
	selection = true;
	movement = false;
//update sprite index
var _oldSprite = sprite_index; 
sprite_index = sStand;
if(_oldSprite != sprite_index)
	localFrame = 0;
	
//update image index
playerAnimation();
}
else if(global.is_move){
	movement = true;
	selection = false;

//update sprite index
var _oldSprite = sprite_index; 
if(inputMag != 0){
	direction = inputDir;
	sprite_index = sRun;
}else
sprite_index = sStand;
if(_oldSprite != sprite_index)
	localFrame = 0;
	
	if((footstepCD <= 0)&&((keyRight - keyLeft != 0)||(keyUp - keyDown != 0))){
		footstepCD = 30;
		audio_play_sound(footstep,1,false);
	}else footstepCD --;
	
//update image index
playerAnimation();

}
}
