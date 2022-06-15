tool
extends Control


func _physics_process(_delta):
	
	$RetroTVBuffer/RetroTVShaderMaterial.rect_size = rect_size
	main()
	
func main():

	var mat = $RetroTVBuffer/RetroTVShaderMaterial
	
	mat.visible = get_parent().retro_tv_show
		
	mat.material.set_shader_param("scanline_count", get_parent().retro_tv_scanlines)
	mat.material.set_shader_param("scanline_speed", get_parent().retro_tv_scanline_speed)
	
	return 0
