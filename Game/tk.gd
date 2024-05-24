extends Node

@export var Start_Scen = preload("res://MiniQuiz/Game/game.tscn")
@onready var dialogue_box = $DialogueBox


func _ready():
	dialogue_box.start('tk_start')


