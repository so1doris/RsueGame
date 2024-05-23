class_name OptionsMenu
extends Control

@onready var back_button:=  $"Выход из меню" as TextureButton

signal exit_option_menu

func _ready():
	back_button.button_down.connect(on_exit_pressed)
	set_process(false)
	
func on_exit_pressed() -> void:
	exit_option_menu.emit()
	set_process(false)
