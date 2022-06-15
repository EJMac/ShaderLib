tool
extends Control


func _physics_process(_delta):
	$VignetteBuffer/VignetteShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $VignetteBuffer/VignetteShaderMaterial
	
	mat.visible = get_parent().vignette_show
		
	mat.material.set_shader_param("vignette_intensity", get_parent().vignette_intensity)
	mat.material.set_shader_param("vignette_opacity", get_parent().vignette_opacity)
	mat.material.set_shader_param("vignette_rgb", get_parent().vignette_rgb)
	
	return 0
