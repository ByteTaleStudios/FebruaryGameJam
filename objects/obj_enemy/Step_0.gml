switch (game_state) {
	
	case "walking":
		if (x < -(sprite_get_width(sprite_index))-16) {
			instance_destroy();
		}

		x-=difficulty_speed;
		image_speed = obj_player.walking_image_speed;
		
		break;
		
	case "interacting":
		image_speed = 0;
		image_index = 0;
		break;
}