shader_type canvas_item;

void fragment() {
	vec3 rgb = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	rgb.r = 1.0 - rgb.r;
	rgb.g = 1.0 - rgb.g;
	rgb.b = 1.0 - rgb.b;
	COLOR.rgb = rgb;
	
}