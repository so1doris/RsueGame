extends Area2D

var second_floor = preload("res://Scenes/second_floor.tscn") 

func _on_body_entered(body):
	get_tree().change_scene_to_packed(second_floor)
