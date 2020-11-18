/// @description Insert description here
// You can write your code in this editor
if mouse_check_button_pressed(mb_left) {
    if collision_point(mouse_x, mouse_y, id, true, false) { //Arguments are (x, y, obj, prec, notme)
        game_end()
    }
}