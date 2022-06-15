shader_type canvas_item;

uniform int bias : hint_range(0, 100) = 0;

void fragment(){
	float r = textureLod(SCREEN_TEXTURE, (SCREEN_UV + vec2(float(bias)*SCREEN_PIXEL_SIZE.x, float(bias)*SCREEN_PIXEL_SIZE.y) ), 0.0).r;
	float g = textureLod(SCREEN_TEXTURE, SCREEN_UV, 0.0).g;
	float b = textureLod(SCREEN_TEXTURE, (SCREEN_UV - vec2(float(bias)*SCREEN_PIXEL_SIZE.x, float(bias)*SCREEN_PIXEL_SIZE.y) ), 0.0).b;
	COLOR.rgb = vec3(r,g,b);
}