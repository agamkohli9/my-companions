/// @description Insert description here
// You can write your code in this editor
//input text
text = "It's rude to say no to her request after asking her to come with you.";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);