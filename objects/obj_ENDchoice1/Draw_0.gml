/// @description Insert description here
// You can write your code in this editor
text = "Mom: You're finally home, " + global.player_name +"."
text1 = "(1.) Mhm."
text2 = "(2.) Yes, I am home now."
text3 = "(3.) Hi Mom, how are you doing?";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);
height = string_height(text1);
draw_text_ext(x, y+75, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+120, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+195, text3, height, width);