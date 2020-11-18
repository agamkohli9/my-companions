/// @description Insert description here
// You can write your code in this editor
text = "To pick your reponse, press the number key corresponding to the option you'd like to choose."

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite_part(box_spr, 0, 7, 7, width-15, 187, x, y); 
draw_text_ext(x+5, y+2, text, height, width);