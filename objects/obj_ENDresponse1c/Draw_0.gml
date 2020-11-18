/// @description Insert description here
// You can write your code in this editor
text = "Mom: I'm doing well, thanks for asking!"

text1 = "Good job carrying on the conversation!"

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);
draw_text_ext(x, y+150, text1, height, width);