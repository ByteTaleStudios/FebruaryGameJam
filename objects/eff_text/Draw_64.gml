draw_set_font(fnt_default); //
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if (game_state != "talking") {
	instance_destroy();
}
	
var _i = 1;
var _line = 0;
var _len = 0;

while (_i <= string_length(mess)) {
	
	#region //Go to next line
	if (_len > max_width) {
		_line++;
		_len = 0;
	}

	#endregion
	#region //Modifier
	//check for a modifier
	if (string_char_at(mess, _i) == "%") {
		modifier = string_char_at(mess, _i);
		_i++;
	}
	else {
		modifier = "";	
	}
	
	switch (modifier) {
		
		case "%":
			if (draw_color == c_white) {
				draw_color = c_red;
			}
			else {
				draw_color = c_white;	
			}
			break;
	}
	#endregion
	
	draw_set_color(draw_color);
	_len += string_width(string_char_at(mess, _i));
	draw_text(x + (_len + char_width/5), y + (sep * _line), string_char_at(mess, _i));
	draw_set_color(c_white);
	
	_i++;
}