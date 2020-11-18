/// @description Insert description here
// You can write your code in this editor
text = "Great job carrying on the conversation!";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y-300);
draw_text_ext(x, y-300, text, height, width);