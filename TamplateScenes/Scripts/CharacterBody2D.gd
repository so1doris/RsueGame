extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta: float):
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	
	velocity.x = direction * SPEED
	
	move_and_slide()
