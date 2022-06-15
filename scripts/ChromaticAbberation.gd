tool
extends Control


func _physics_process(_delta):
	$ChromaticAbbBuffer/ChromaticAbberationShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $ChromaticAbbBuffer/ChromaticAbberationShaderMaterial
	
	mat.visible = get_parent().chromatic_abberation_show
		
	mat.material.set_shader_param("bias", get_parent().chromatic_abberation_bias)
	
	return 0
