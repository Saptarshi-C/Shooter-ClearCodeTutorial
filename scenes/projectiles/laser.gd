extends Area2D


const laserSpeed: int = 1000
var direction: Vector2 = Vector2.UP

func _ready():
	$LaserLifeTimer.start()

func _process(delta):
	position += direction * laserSpeed * delta


func _on_body_entered(body):
	if "hit" in body:
		body.hit()
	queue_free()


func _on_laser_life_timer_timeout():
	queue_free()
