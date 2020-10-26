/// @description Insert description here
// You can write your code in this editor
text = "Hey, "+global.player_name+", how was your nap?"
text1 = "(1.) ...            "
text2 = "(2.) It was good.            "
text3 = "(3.) It went well, how's work?";

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
draw_text_ext(x, y+125, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+175, text3, height, width);