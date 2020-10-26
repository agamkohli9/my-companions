/// @description Insert description here
// You can write your code in this editor
text = "Mom: Oh, it looks like you brought some friends with you!"
text1 = "(1.) Yes."
text2 = "(2.) Is it okay if they eat dinner with us?"
text3 = "(3.) They are not my friends.";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);
height = string_height(text1);
draw_text_ext(x, y+110, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+155, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+225, text3, height, width);