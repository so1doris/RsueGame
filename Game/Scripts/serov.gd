extends CharacterBody2D

@export var speed: float = 200.0
var player: CharacterBody2D = null

func _ready() -> void:
	player = get_node_or_null("../Player")
	if player == null:
		print("Player not found!")
		
func _physics_process(delta: float) -> void:
	if player:
		var direction = (player.global_position - global_position).normalized()
		velocity = direction * speed
		move_and_slide()
