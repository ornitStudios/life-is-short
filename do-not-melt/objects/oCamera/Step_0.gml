#region Follow the player
		

xTo = player.x + (mouse_x - player.x)/4 
yTo = player.y + (mouse_y - player.y)/4 


x += (xTo - x)/25
y += (yTo - y)/25
		
//Dont let it go outside
x = clamp(x,cameraWidth/2,room_width - cameraWidth/2)
y = clamp(y,cameraHeight/2,room_height - cameraHeight/2)
		
var vm = matrix_build_lookat(x,y,depthMin,x,y,0,false,true,false);
camera_set_view_mat(camera,vm);
		
#endregion

	
	