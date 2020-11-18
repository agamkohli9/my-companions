/// @description Insert description here
// You can write your code in this editor
text = "Penny: That's not very nice..."

text1 = "Try to be a bit nicer to Penny this time."

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);

height = string_height(text1);
draw_text_ext(x, y+150, text1, height, width);