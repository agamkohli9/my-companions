/// @description Insert description here
// You can write your code in this editor
//input text
text = "Lilith is trying to tell you she is almost done with her work and that she wants to spend time with you. Not telling her what you are doing will make her feel left out.";

//init
width = sprite_get_width(box_spr);
height = string_height(text);
draw_set_font(text_fnt);

//draw
draw_sprite(box_spr, 0, x, y);
draw_text_ext(x, y, text, height, width);