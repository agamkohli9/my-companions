/// @description Insert description here
// You can write your code in this editor
text = "Margret: Hello, "+global.player_name+", on your way home?"
text1 = "(1.) Yes, do you need help?"
text2 = "(2.) Yes, I am, just stopping by to see how you're doing."
text3 = "(3.) None of your business";

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
draw_text_ext(x, y+75, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+150, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+250, text3, height, width);