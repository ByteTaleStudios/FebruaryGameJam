
switch (game_state) {
	
	case "start":
		image_speed = walking_image_speed;
		if (x < 256) {
			x+=difficulty_speed;
		}
		else {
			game_state = "talking";	
		}
		break;
		
	case "talking":
		image_speed = 0;
		image_index = 0;
		if (keyboard_check_pressed(vk_enter)) {
			game_state = "walking";	
		}
		break;
		
	case "walking":
		image_speed = walking_image_speed;
		if (instance_exists(obj_enemy)) {
			if (point_distance(x, y, obj_enemy.x, obj_enemy.y) <= interaction_dist) and !(obj_enemy.interacted) {
				game_state = "interacting";
				interaction_time = interaction_base_time;
				obj_enemy.interacted = true;
			}
		}
		
		break;
		
	case "interacting":
		image_speed = 0;
		image_index = 0;
		#region //Control interaction time //how long
		if (interaction_time >= 0.0) {
			interaction_time-=(delta_time/1000000);
		}
		else {
			game_state = "walking";	
		}
		#endregion
		break;
}