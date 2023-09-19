extends CharacterBody2D

var moveSpeed = 500
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	# input
	var direction = Input.get_vector("left","right","up","down")
	velocity = direction * moveSpeed
	move_and_slide()
	
	# shoot laser
	if Input.is_action_pressed("primary action"):
		print("firin ma laser")
		
	# shoot grenade
	if Input.is_action_just_pressed("secondary action"):
		print("throw grenade")