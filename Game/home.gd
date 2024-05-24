extends Node

@onready var dialogue_box = $DialogueBox

var entrance = preload("res://scenes/Rsue/entrance.tscn")

func _ready():
	dialogue_box.start('Home_start')
	dialogue_box.connect("dialogue_ended", Callable(self, "_on_dialogue_ended"))

func _on_dialogue_ended():
	get_tree().change_scene_to_packed(entrance)
