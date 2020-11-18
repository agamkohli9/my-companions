/// @description Insert description here
// You can write your code in this editor
text = "Joey: Hey " + global.player_name +"! Why are there so many people with you?"
text1 = "(1.) ..."
text2 = "(2.) Just some people."
text3 = "(3.) They're my friends! They're eating dinner with us.";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x+300, y);
draw_sprite(box_spr, 0, x+300, y+150);
draw_sprite_part(box_spr, 0, 7, 7, width-15, 280, x+300, y);
draw_text_ext(x+300, y, text, height, width);
height = string_height(text1);
draw_text_ext(x+300, y+125, text1, height, width);
height = string_height(text2);
draw_text_ext(x+300, y+175, text2, height, width);
height = string_height(text3);
draw_text_ext(x+300, y+250, text3, height, width);