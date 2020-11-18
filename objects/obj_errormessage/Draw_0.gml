/// @description Insert description here
// You can write your code in this editor
text = "You can't do that yet."

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite_part(box_spr, 0, 7, 7, width-15, 43, x, y); 
draw_text_ext(x, y, text, height, width);
