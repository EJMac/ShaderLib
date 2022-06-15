shader_type canvas_item;

uniform float intensity : hint_range(0.0, 1.0) = 1.0;

void fragment(){
	vec3 color = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).rgb;
	float r = color.r;
	float g = color.g;
	float b = color.b;
	float avg = (r+g+b)/3.0;
	float inverse_intensity = (1.0 - intensity);
	r = r - (inverse_intensity * (r-avg));
	g = g - (inverse_intensity * (g-avg));
	b = b - (inverse_intensity * (b-avg));
	
	COLOR.rgb = vec3(r, g, b);
}
