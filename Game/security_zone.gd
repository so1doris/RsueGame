extends Node

@onready var dialogue_box = $DialogueBox

# Called when the node enters the scene tree for the first time.
func _ready():
	dialogue_box.start('security_start')

