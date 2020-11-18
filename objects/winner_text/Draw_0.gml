/// @description Insert description here
// You can write your code in this editor
text = "Congratulations! You beat the game!"

draw_set_font(font_menu);
draw_set_halign(fa_center);
draw_text_ext(x, y, text, string_height(text), 400);

text1 = "P.S. Click the turkey to exit."

draw_set_font(text_fnt);
draw_text_ext(x, y+550, text1, string_height(text), 500);