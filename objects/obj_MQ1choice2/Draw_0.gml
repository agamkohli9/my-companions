/// @description Insert description here
// You can write your code in this editor
text = "What are you planning to do now? My work here is pretty much finished."
text1 = "(1.) Just passing through "
text2 = "(2.) I'm on my way home for dinner, do you want to join me?"

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
draw_text_ext(x, y+170, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+245, text2, height, width);