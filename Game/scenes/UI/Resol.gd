extends Control


@onready var option_button:= $HBoxContainer/OptionButton as OptionButton

const RESOL_ARRAY: Dictionary = {
	"1920 x 1080" : Vector2i(1920,1080),
	"1280 x 720": Vector2i(1280,720)
}

func _ready():
	option_button.item_selected.connect(on_resolution_selected)
	add_resolution_items()
	
func add_resolution_items() -> void:
	for resolution_size_text in RESOL_ARRAY:
		option_button.add_item(resolution_size_text)

func on_resolution_selected(index: int) -> void:
	DisplayServer.window_set_size(RESOL_ARRAY.values()[index])
