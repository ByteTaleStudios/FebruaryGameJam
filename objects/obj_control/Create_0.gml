/// @description Main Creation Event
#region

random_set_seed(current_time);
randomize();

//Global vars
globalvar base_width, base_height;
base_width = 1366;
base_height = 768;

globalvar finger_1, finger_2, finger_3, finger_4, finger_5, finger1_state, finger2_state, finger3_state, finger4_state, finger5_state;
finger_1 = "C";
finger_2 = "V";
finger_3 = "B";
finger_4 = "N";
finger_5 = "M";

finger1_state = 0;
finger2_state = 0;
finger3_state = 0;
finger4_state = 0;
finger5_state = 0;

globalvar difficulty, cringe;
difficulty = 1;
cringe = 0;

globalvar difficulty_speed;
difficulty_speed = 5; //

globalvar game_state;
game_state = "start";
/*
start
walking
talking

*/

globalvar gestures, colors;
gestures = ds_list_create();
	ds_list_add(gestures, "Finger-gun");
	ds_list_add(gestures, "Fist");
	ds_list_add(gestures, "Handshake");
	ds_list_add(gestures, "Pointing");
	
colors = ds_list_create();
	ds_list_add(colors, "Red");
	ds_list_add(colors, "Green");
	ds_list_add(colors, "Blue");
	ds_list_add(colors, "Orange");
	
#endregion
