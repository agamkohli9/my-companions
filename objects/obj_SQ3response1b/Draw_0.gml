/// @description Insert description here
// You can write your code in this editor
text = "Joey: Oh, ok then."

text1 = "This can make your friends feel unimportant."

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x+300, y);
draw_text_ext(x+300, y, text, height, width);

height = string_height(text1);
draw_text_ext(x+300, y+150, text1, height, width);