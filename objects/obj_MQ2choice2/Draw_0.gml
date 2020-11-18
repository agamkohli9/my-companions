/// @description Insert description here
// You can write your code in this editor
text = "Margret: Actually, could you do me a favor? I need some help getting the eggs from the nest over there."
text1 = "(1.) OK."
text2 = "(2.) No, I don't want to."
text3 = "(3.) I can do that for sure!";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_sprite(box_spr, 0, x, y+150);
draw_sprite_part(box_spr, 0, 7, 7, width-15, 280, x, y);
draw_text_ext(x, y, text, height, width);
height = string_height(text1);
draw_text_ext(x, y+225, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+275, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+350, text3, height, width);