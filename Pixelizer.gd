tool
extends Control

func _physics_process(_delta):
	
	$PixelizerBuffer/PixelizerShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $PixelizerBuffer/PixelizerShaderMaterial
	
	mat.visible = get_parent().pixel_show
		
	mat.material.set_shader_param("pixel_size", get_parent().pixel_size)	
	return 0
