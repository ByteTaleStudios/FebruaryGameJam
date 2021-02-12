
#region //Randomize creating a painting
if (room == rm_game) {
	if (instance_number(obj_painting) == 0) {
		var _c = irandom_range(0, 1000);
		if (_c == 8) {
			instance_create_layer(base_width+300, 352, "Instances", obj_painting);
		}
	}
}
#endregion