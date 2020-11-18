/// @description Insert description here
// You can write your code in this editor
text = "Margret: Thank you so much " + global.player_name + "! You can have some of these eggs for your dinner tonight. Do you mind if I tag along?"
text1 = "(1.) You're definitely invited!"
text2 = "(2.) No, you're not invited."
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
draw_text_ext(x, y+225, text1, height, width);
height = string_height(text2);
draw_text_ext(x, y+300, text2, height, width);