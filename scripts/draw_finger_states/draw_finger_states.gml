// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_finger_states(_x, _y) {
	draw_sprite(spr_palm, 0, _x, _y);
	if (keyboard_check_pressed(ord(finger_1))) {
		finger1_state = !finger1_state;
	}
	if (keyboard_check_pressed(ord(finger_2))) {
		finger2_state = !finger2_state;
	}
	if (keyboard_check_pressed(ord(finger_3))) {
		finger3_state = !finger3_state;
	}
	if (keyboard_check_pressed(ord(finger_4))) {
		finger4_state = !finger4_state;
	}
	if (keyboard_check_pressed(ord(finger_5))) {
		finger5_state = !finger5_state;
	}
	
	draw_sprite(spr_finger1, finger1_state, _x, _y);
	draw_sprite(spr_finger2, finger2_state, _x, _y);
	draw_sprite(spr_finger3, finger3_state, _x, _y);
	draw_sprite(spr_finger4, finger4_state, _x, _y);
	draw_sprite(spr_finger5, finger5_state, _x, _y);
}