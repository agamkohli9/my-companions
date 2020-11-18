//update sprite
function playerAnimation(){
var _cardinalDirection = ceil(direction/90);
var _totalFrames = sprite_get_number(sprite_index) / 4;
image_index = localFrame + (_cardinalDirection * _totalFrames);
localFrame += sprite_get_speed(sprite_index) / 60;

if(localFrame >= _totalFrames){
	animationEnd = true;
	localFrame -= _totalFrames;
}
else 
	animationEnd = false;
}