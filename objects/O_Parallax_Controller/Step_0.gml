/// @description Parallax scrolling
var Near = layer_get_id("Streets");
var Stillnear = layer_get_id("Near_Buildings");
var Distant = layer_get_id("Distant_Buildings");
var Far = layer_get_id("Sky");

layer_x(Near, lerp(0, camera_get_view_x(view_camera[0]), 0.5)  );
layer_x(Stillnear, lerp(0, camera_get_view_x(view_camera[0]), 0.7)  );
layer_x(Distant, lerp(0, camera_get_view_x(view_camera[0]), 0.85)  );
layer_x(Far, lerp(0, camera_get_view_x(view_camera[0]), 0.9)  );