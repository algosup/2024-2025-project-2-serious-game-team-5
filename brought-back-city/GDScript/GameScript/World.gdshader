shader_type sky;

uniform vec3 sky_color : source_color;
uniform vec3 sky_color2 : source_color;
uniform vec3 sky_color3 : source_color;
uniform vec3 sky_color4 : source_color;
uniform vec3 sky_color5 : source_color;

void sky() {
	float col = clamp(EYEDIR.y, -1.0, 1.0);
	float segment = (col + 1.0) / 2.0;
	vec3 final_color;

	// Gradient for sky_color and sky_color2
	if (segment < 0.25) {
		float t = segment / 0.25;
		final_color = mix(sky_color, sky_color2, t);
	// Gradient for sky_color2 and sky_color3
	} else if (segment < 0.5) {
		float t = (segment - 0.25) / 0.25;
		final_color = mix(sky_color2, sky_color3, t);
	// Gradient for sky_color3 and sky_color4
	} else if (segment < 0.75) {
		float t = (segment - 0.5) / 0.25;
		final_color = mix(sky_color3, sky_color4, t);
	// Gradient for sky_color4 and sky_color5
	} else {
		float t = (segment - 0.75) / 0.25;
		final_color = mix(sky_color4, sky_color5, t);
	}

	COLOR = final_color;
}