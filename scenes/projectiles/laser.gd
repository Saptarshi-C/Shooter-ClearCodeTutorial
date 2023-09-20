extends Area2D


@export var laserSpeed: int = 1000
var direction: Vector2 = Vector2.UP


func _process(delta):
	position += direction * laserSpeed * delta
