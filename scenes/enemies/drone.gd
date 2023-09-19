extends CharacterBody2D

var moveSpeed = 400

func _process(_delta):
	# direction
	var direction = Vector2.RIGHT
	velocity = direction * moveSpeed
	move_and_slide()
