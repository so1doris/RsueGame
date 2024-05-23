extends Area2D

var Tk = preload("res://scenes/Rsue/tk.tscn")
 
func _on_body_entered(body):
	get_tree().change_scene_to_packed(Tk)
