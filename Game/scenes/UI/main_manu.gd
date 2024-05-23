class_name MainMenu
extends Control

@onready var start_button = $"Кнопки/Играть" as TextureButton
@onready var continue_button = $"res://Кнопки/Продолжить" as TextureButton
@onready var settings_button = $"Кнопки/Настройки" as TextureButton
@onready var exit_button = $"Кнопки/Выход" as TextureButton
@onready var Options = $Options as OptionsMenu
@onready var ButCont = $"Кнопки" as VBoxContainer

@onready var start_level = preload("res://Сharacters/Exit.tscn") as PackedScene
func _ready():
	handle_cont()

func on_start_pressed() -> void:
	get_tree().change_scene_to_packed(start_level)
	
#func on_continue_pressed() -> void:
#	pass

func on_settings_pressed() -> void:
	ButCont.visible = false
	Options.set_process(true)
	Options.visible = true
	
func on_exit_option_menu() -> void:
	ButCont.visible = true
	Options.visible =false

func on_exit_pressed() -> void:
	get_tree().quit()

func handle_cont() -> void:
	start_button.button_down.connect(on_start_pressed)
#	continue_button.button_down.connect(on_continue_pressed())
	settings_button.button_down.connect(on_settings_pressed)
	exit_button.button_down.connect(on_exit_pressed)
	Options.exit_option_menu.connect(on_exit_option_menu)
