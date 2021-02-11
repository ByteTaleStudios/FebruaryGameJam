/// @description Update 3D camera
#region
var _cam_width  = camera_get_view_width(camera);
var _cam_height = camera_get_view_height(camera);
var _cam_x      = camera_get_view_x(camera) + _cam_width/2;
var _cam_y      = camera_get_view_y(camera) + _cam_height/2;

var _view_mat = matrix_build_lookat(_cam_x, _cam_y, cam_dist, _cam_x, _cam_y, 0, 0, 1, 0);
var _proj_mat = matrix_build_projection_perspective_fov(cam_fov, cam_asp, 1, 10000);

camera_set_view_mat(camera, _view_mat);
camera_set_proj_mat(camera, _proj_mat);

camera_apply(camera);
#endregion
