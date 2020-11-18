/// @description Insert description here
// You can write your code in this editor
menu_move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

if keyboard_check_pressed(vk_enter){
button_select = menu_index
if (button_select=0)
room_goto_next()
else if (button_select=1)
room_goto(End)
else if (button_select=2)
game_end()
}
menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons - 1) menu_index = 0;

last_selected = menu_index;