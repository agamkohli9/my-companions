/// @description Insert description here
// You can write your code in this editor

//draw pause menu
menuText = "Number of Companions: " + string(global.numCompanions) + 
			"\n\nControls:\nMovement (Arrow Keys)\nMenu/Resume (Escape)\nInteract (E)\nRestart Game (R)\n\nQuest Log:\nSide Quest 1 - INCOMPLETE\nSide Quest 2 - INCOMPLETE\nSide Quest 3 - INCOMPLETE\nSide Quest 4 - INCOMPLETE";


if paused == true {
if !surface_exists(paused_surf) {
    if paused_surf == -1 {
        instance_deactivate_all(true);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    } else {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
	
    draw_text_transformed_colour(room_width / 2, room_height / 7, "PAUSED",2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
	draw_text(room_width / 3.3, room_height / 4, menuText);
    }
}