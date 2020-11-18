/// @description Insert description here
// You can write your code in this editor
//input text
text = "Not giving a clear response to " + global.friend_name + 
" can make it seem like you don't want to talk to them. If you choose this option, " + 
global.friend_name + " will leave on their own.";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);