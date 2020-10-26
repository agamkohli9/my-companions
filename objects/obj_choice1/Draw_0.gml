/// @description Insert description here
// You can write your code in this editor
text = "It's time to wake up, " + global.player_name +"."
text1 = "(1.) ...            "
text2 = "(2.) Hey.            "
text3 = "(3.) Hey " + global.friend_name + "! How long was I asleep?";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);
draw_set_color(c_red);
height = string_height(text1);
draw_text_ext(x, y+75, text1, height, width);
draw_set_color(c_yellow);
height = string_height(text2);
draw_text_ext(x, y+125, text2, height, width);
draw_set_color(c_green)
height = string_height(text3);
draw_text_ext(x, y+175, text3, height, width);
draw_set_color(c_white);