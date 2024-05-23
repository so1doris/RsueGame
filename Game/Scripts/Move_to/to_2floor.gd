extends Area2D

var to_CiberLight= preload("res://scenes/Rsue/ciber_light.tscn") 

func _on_body_entered(body):
	get_tree().change_scene_to_packed(to_CiberLight)
