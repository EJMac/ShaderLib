tool
extends Control


func _physics_process(_delta):
	$MuteBuffer/MuteColorShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $MuteBuffer/MuteColorShaderMaterial
	
	mat.visible = get_parent().mute_color_show
		
	mat.material.set_shader_param("brightness", get_parent().adjustment_brightness)
	mat.material.set_shader_param("contrast", get_parent().adjustment_contrast)
	mat.material.set_shader_param("saturation", get_parent().adjustment_saturation)
	
	return 0
