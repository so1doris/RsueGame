extends CharacterBody2D

@export var speed: float = 200.0
@export var target: NodePath

var target_node: Node2D

func _ready():
	target_node = get_node(target)

func _process(delta):
	if target_node:
		var direction = (target_node.global_position - global_position).normalized()
		velocity = direction * speed
		move_and_slide()
