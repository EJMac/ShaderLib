tool
extends Control


func _physics_process(_delta):
	$AdjustmentBuffer/AdjustmentShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $AdjustmentBuffer/AdjustmentShaderMaterial
	
	mat.visible = get_parent().adjustment_show
		
	mat.material.set_shader_param("brightness", get_parent().adjustment_brightness)
	mat.material.set_shader_param("contrast", get_parent().adjustment_contrast)
	mat.material.set_shader_param("saturation", get_parent().adjustment_saturation)
	
	return 0
