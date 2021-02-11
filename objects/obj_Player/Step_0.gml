// Camera
camera_set_view_pos(view_camera[0], x - view_wport[0]/2, y - view_hport[0]/2)
depth = -y

//Movement
if (Direction = 0){
	x += spd	
}else{
	x -= spd	
}

//collision with the elevator
if place_meeting(x,y,obj_elevator){	
	y -= 288
	if (Direction = 0){
	 Direction = 1
	}else{
		Direction = 0	
	}
}