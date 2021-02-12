
if (instance_number(obj_roof) < 3) {
	if (x+(sprite_get_width(sprite_index)/2) > base_width) {
		instance_create_layer(x+sprite_get_width(sprite_index), y, layer, obj_roof);
	}
}