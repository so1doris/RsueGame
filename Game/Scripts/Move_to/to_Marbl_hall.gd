extends Area2D

var Marbl_hall = preload("res://scenes/Rsue/marbl_hall.tscn") 

func _on_body_entered(body):
	get_tree().change_scene_to_packed(Marbl_hall)
