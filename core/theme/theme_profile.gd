class_name ThemeProfile
extends Resource

## Visual configuration for one complete theme.
## Domain and gameplay scripts must not reference this type.
## Theme switching is not implemented. Callers load one profile explicitly.
## Add typography, control styles, backgrounds, icons, gameplay visuals, and effects here when specified.

@export var id: StringName = &""
@export var display_name: String = ""
@export var color_blue: Color = Color.WHITE
@export var color_sky: Color = Color.WHITE
@export var color_yellow: Color = Color.WHITE
@export var color_orange: Color = Color.WHITE
@export var color_white: Color = Color.WHITE
@export var color_pink: Color = Color.WHITE
@export var asset_root: String = ""
