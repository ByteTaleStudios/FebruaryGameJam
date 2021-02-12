switch (game_state) {
	
	case "walking":
		if (x < -(sprite_get_width(sprite_index))-16) {
			instance_destroy();
		}

		x-=difficulty_speed;
		break;
}