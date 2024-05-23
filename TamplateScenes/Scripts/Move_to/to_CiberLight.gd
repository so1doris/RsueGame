extends Area2D

var Ciber_club = preload("res://Scenes/ciber_light.tscn") 

func _on_body_entered(body):
	get_tree().change_scene_to_packed(Ciber_club)
