shader_type canvas_item;

uniform float blur_intensity : hint_range(0.0, 10.0) = 0.0;

void fragment(){
	COLOR = textureLod(SCREEN_TEXTURE, SCREEN_UV, blur_intensity);
}
