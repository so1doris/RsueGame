extends Area2D

var Security = preload("res://Scenes/security_zone.tscn") 

func _on_body_entered(body):
	get_tree().change_scene_to_packed(Security)
