tool
extends Control


func _physics_process(_delta):
	
	$PhotoNegativeBuffer/PhotoNegativeShaderMaterial .rect_size = rect_size
	main()
	
func main():

	var mat = $PhotoNegativeBuffer/PhotoNegativeShaderMaterial
	
	mat.visible = get_parent().photo_negative_show

	return 0
