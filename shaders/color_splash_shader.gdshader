shader_type canvas_item;

uniform vec4 color : hint_color = vec4(1);
uniform float strength = 0.2;

void fragment(){
	vec4 pixel = texture(SCREEN_TEXTURE, SCREEN_UV);
	COLOR = pixel;
	vec3 grayscale_value = vec3(dot(pixel.rgb, vec3(0.299, 0.587, 0.114)));
	float range = 1.0 - step(distance(pixel.rgb, color.rgb), strength);
	COLOR.rgb = mix(pixel.rgb, grayscale_value, range);

	
}