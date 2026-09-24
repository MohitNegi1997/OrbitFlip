extends Control

@export var theme_profile: ThemeProfile

@onready var _background: ColorRect = %Background
@onready var _title: Label = %Title
@onready var _status: Label = %Status


func _ready() -> void:
	if theme_profile == null:
		push_error("Bootstrap is missing ThemeProfile.")
		return
	_apply_theme(theme_profile)


func _apply_theme(profile: ThemeProfile) -> void:
	_background.color = profile.color_sky
	_title.add_theme_color_override("font_color", profile.color_white)
	_status.add_theme_color_override("font_color", profile.color_yellow)
