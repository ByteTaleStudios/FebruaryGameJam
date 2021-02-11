/// @description EVENT
#region
if (g <= 1) {
	if (a < 1) {
		a += 0.02;
		draw_set_alpha(a);
	}
	else if (g == 0) {
		g++;
		alarm[0] = 180;
	}
		draw_sprite(spr_logo_text, 0 , base_width/2, base_height/2);
		draw_sprite_stretched(spr_logo_presents, 0, (base_width/2)-32, (base_height/2)+16, (sprite_get_width(spr_logo_presents)/2), (sprite_get_height(spr_logo_presents)/2));
} 
if (g == 1) {
		a -= 0.05;
		a = clamp(a, 0, 1);
		draw_set_alpha(a);
		if (a == 0) {
			g = 3;
			alarm[0] = 60;
		}
		draw_sprite(spr_logo_text, 0 , base_width/2, base_height/2);
		draw_sprite_stretched(spr_logo_presents, 0, (base_width/2)-32, (base_height/2)+16, (sprite_get_width(spr_logo_presents)/2), (sprite_get_height(spr_logo_presents)/2));
}
draw_set_alpha(1);
#endregion
