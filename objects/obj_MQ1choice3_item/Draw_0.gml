/// @description Insert description here
// You can write your code in this editor
text = "While I go finish some paperwork, why don't you lock up the gate for me? The key is by the tree, just press E to pick it up and use it."
text1 = "(1.) Sure!"
text2 = "(2.) No";

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
draw_text_ext(x, y+250, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+280, text2, height, width);