/// @description Insert description here
// You can write your code in this editor
text = "Penny: Excuse me! Can you please help me get this water?"
text1 = "(1.) Yes, of course!"
text2 = "(2.) I'm a little busy right now, sorry."
text3 = "(3.) No, do it yourself.";

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
draw_text_ext(x, y+125, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+175, text2, height, width);
height = string_height(text3);
draw_text_ext(x, y+250, text3, height, width);