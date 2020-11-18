//moving keys
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));

//moving
//textSetting();
//draw_text(160,160,"try");

//keyInteract = keyboard_check(ord("F"));
//keyQuest = keyboard_check(ord("I"));
//keyBag = keyboard_check(ord("B"));

//functions

//movement basics
inputDir = point_direction(0,0,keyRight - keyLeft,keyDown - keyUp);//Directions
//inputMag = (keyRight - keyLeft != 0)||(keyUp - keyDown != 0);//moving speed
//defining speed
//hSpeed = lengthdir_x(inputMag * speedWalk, inputDir);
//vSpeed = lengthdir_y(inputMag * speedWalk, inputDir);
//changing speed
//x+=hSpeed;
//y+=vSpeed;

//update sprite index
var _oldSprite = sprite_index; 
if(inputMag != 0){
	direction = inputDir;
	sprite_index = sRun;
}else
sprite_index = sStand;
if(_oldSprite != sprite_index)
	localFrame = 0;
	
//update image index
playerAnimation();