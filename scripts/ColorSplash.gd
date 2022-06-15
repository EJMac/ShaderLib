tool
extends Control


func _physics_process(_delta):
	
	$ColorSplashBuffer/ColorSplashShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $ColorSplashBuffer/ColorSplashShaderMaterial
	
	mat.visible = get_parent().color_splash_show
		
	mat.material.set_shader_param("color", get_parent().splash_rgb)
	mat.material.set_shader_param("strength", get_parent().splash_strength)
	
	return 0
