/// @description Insert description here
// You can write your code in this editor
//input text
text = "Not giving any response can make " + global.friend_name + 
" think you aren't interested in talking to them, and can make them feel upset";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);