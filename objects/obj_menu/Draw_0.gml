/// @description Insert description here
// You can write your code in this editor
var iw =0;
repeat (buttons) {
	
	draw_set_font(font_main);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	
	if (menu_index == iw) draw_set_color(c_red);
	
	draw_text (x, y + button_h *iw, button[iw]);
	iw++;
}
draw_set_color(c_white);
draw_text(544, 244, "My Companions");
draw_set_font(text_fnt);
draw_set_halign(fa_left);
draw_set_color(c_white);
text = "Please use the arrow keys to highlight an"
text2 = "option, and use the enter key to select it."
draw_text_ext(x+275, y, text, 25, 275);
draw_text_ext(x+275, y+75, text2, 25, 270);
