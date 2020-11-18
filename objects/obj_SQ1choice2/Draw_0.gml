/// @description Insert description here
// You can write your code in this editor
text = "I'm doing well thanks for asking! Does your family still have the big dinners every weekend?"
text1 = "(1.) Yeah! Did you want to join us for dinner tonight?"
text2 = "(2.) We do."
text3 = "(3.) We do, want to come along?";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y-300);
draw_sprite(box_spr, 0, x, y+150-300);
draw_sprite_part(box_spr, 0, 7, 7, width-15, 280, x, y-300);
draw_text_ext(x, y-300, text, height, width);
height = string_height(text1);
draw_text_ext(x, y+175-300, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+275-300, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+310-300, text3, height, width);