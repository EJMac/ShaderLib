shader_type canvas_item;

uniform int pixel_size : hint_range(1, 64) = 1;

void fragment(){
	vec2 coord = SCREEN_UV;
	coord /= (SCREEN_PIXEL_SIZE * vec2(float(pixel_size)));
	coord = floor(coord);
	coord *= (SCREEN_PIXEL_SIZE * vec2(float(pixel_size)));
	vec4 color = textureLod(SCREEN_TEXTURE, coord, 0.0);
	
	COLOR = color;
}