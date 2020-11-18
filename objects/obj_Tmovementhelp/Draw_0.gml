/// @description Insert description here
// You can write your code in this editor
text = "Now, you can move around! Use the arrow keys to move around the screen, press E to interact with other people and objects, and press ESCAPE to pause. You cannot return to this room once you continue."

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite_part(box_spr, 0, 7, 7, width-15, 300, x, y); 
draw_sprite_part(box_spr, 0, 7, 7, width-15, 100, x, y+275); 
draw_text_ext(x+5, y+2, text, height, width-20);