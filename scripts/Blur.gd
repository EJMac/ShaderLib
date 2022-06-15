tool
extends Control


func _physics_process(_delta):
	$BlurBuffer/BlurShaderMaterial.rect_size = rect_size
	main()
	
func main():
	
	var mat = $BlurBuffer/BlurShaderMaterial
	mat.visible = get_parent().blur_show
	mat.material.set_shader_param("blur_intensity", get_parent().blur_intensity)
	
	return 0
