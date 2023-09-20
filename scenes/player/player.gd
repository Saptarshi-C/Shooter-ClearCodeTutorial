extends CharacterBody2D


signal fire_laser(laser_position)
signal fire_grenade(grenade_position)


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
		var laser_markers = $LaserStartPositions.get_children()
		var selected_marker = laser_markers.pick_random()
		can_laser = false
		$LaserTimer.start()
		fire_laser.emit(selected_marker.global_position)
		
	# shoot grenade
	if Input.is_action_pressed("secondary action") and can_grenade:
		var grenade_markers = $GrenadeStartPositions.get_children()
		var selected_marker = grenade_markers.pick_random()
		can_grenade = false
		$GrenadeTimer.start()
		fire_grenade.emit(selected_marker.global_position)


func _on_laser_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true
