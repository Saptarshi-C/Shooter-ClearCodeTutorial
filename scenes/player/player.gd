extends CharacterBody2D


signal fire_laser
signal fire_grenade


var moveSpeed = 500
var can_laser: bool = true
var can_grenade: bool = true


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
	if Input.is_action_pressed("primary action") and can_laser:
		fire_laser.emit()
		can_laser = false
		$LaserTimer.start()
		
	# shoot grenade
	if Input.is_action_pressed("secondary action") and can_grenade:
		fire_grenade.emit()
		can_grenade = false
		$GrenadeTimer.start()


func _on_laser_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true
