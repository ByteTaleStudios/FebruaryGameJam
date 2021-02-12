
switch (game_state) {
	
	case "talking":
		if !(instance_exists(eff_text)) {
			var _text = instance_create_layer(x-200, y-200, "Init", eff_text);
			_text.mess = Message;
		}
		break;
	
	case "walking":
		if (x < -(sprite_get_width(sprite_index))-16) {
			instance_destroy();
		}

		x-=difficulty_speed;
		break;
}