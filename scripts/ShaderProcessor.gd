tool
extends Control

onready var RSIZE = get_tree().get_root().get_viewport().size

export (bool) var adjustment_show = false setget set_adjustment
export (float, 0.0, 3.0) var adjustment_brightness = 1.0
export (float, 0.0, 3.0) var adjustment_contrast = 1.0
export (float, 0.0, 3.0) var adjustment_saturation = 1.0

export (bool) var blur_show = false setget set_blur
export (float, 0.0, 10.0) var blur_intensity = 0.0

export (bool) var chromatic_abberation_show = false setget set_chrom
export (int) var chromatic_abberation_bias = 0.0

export (bool) var vignette_show = false setget set_vignette
export (float, 0.0, 1.0) var vignette_intensity = 0.4
export (float, 0.0, 1.0) var vignette_opacity = 0.5
export (Color) var vignette_rgb = Color.black

export (bool) var color_splash_show = false setget set_splash
export (Color) var splash_rgb = Color.purple
export (float, 0.0, 1.0) var splash_strength = 1.0

export (bool) var photo_negative_show = false setget set_neg

export (bool) var retro_tv_show = false setget set_tv
export (float, 0.0, 600.0) var retro_tv_scanlines = 180.0
export (float, 0.0, 1.0) var retro_tv_scanline_speed = 0.15

export (bool) var pixel_show = false setget set_pixel
export (int, 1, 64) var pixel_size = 1

func _ready():
	rect_size = RSIZE
	for child in get_children():
		child.rect_size = RSIZE

func set_adjustment(value):
	adjustment_show = value
	pass
	
func set_blur(value):
	blur_show = value
	pass

func set_chrom(value):
	chromatic_abberation_show = value
	pass

func set_vignette(value):
	vignette_show = value
	pass
	
func set_splash(value):
	color_splash_show = value
	pass
	
func set_neg(value):
	photo_negative_show = value
	pass
	
func set_tv(value):
	retro_tv_show = value
	pass

func set_pixel(value):
	pixel_show = value
	pass
