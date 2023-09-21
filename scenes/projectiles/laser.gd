extends Area2D


const laserSpeed: int = 1000
var direction: Vector2 = Vector2.UP


func _process(delta):
	position += direction * laserSpeed * delta
