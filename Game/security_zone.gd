extends Node

@onready var dialogue_box = $DialogueBox


func _ready():
	dialogue_box.start('security_start')

