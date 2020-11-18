/// @description Insert description here
// You can write your code in this editor
text = "Oh! Hey, "+global.player_name+"! We haven't talked in a long time!"
text1 = "(1.) It has been a while. How have you been?"
text2 = "(2.) Just wanted to say hi.            "
text3 = "(3.) Actually, I don't feel like talking anymore.";

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
draw_text_ext(x, y+75-300, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+175-300, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+260-300, text3, height, width);