extends Node2D


var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene: PackedScene = preload("res://scenes/projectiles/grenade.tscn")


func _on_gate_player_entered_gate(_body):
	var tween = create_tween()
	tween.tween_property($Player,"speed",0,0.5)


func _on_player_fire_laser(laser_position, laser_direction):
	var laser = laser_scene.instantiate() as Area2D
	laser.position = laser_position
	laser.rotation_degrees = rad_to_deg(laser_direction.angle()) + 90
	laser.direction = laser_direction
	$Projectiles.add_child(laser)


func _on_player_fire_grenade(grenade_position, grenade_direction):
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = grenade_position
	grenade.linear_velocity = grenade_direction * grenade.grenadeSpeed
	$Projectiles.add_child(grenade)


func _on_house_player_entered():
	var tween = get_tree().create_tween()
	tween.tween_property($Player/Camera2D,"zoom",Vector2(0.8,0.8),0.5)


func _on_house_player_exited():
	var tween = get_tree().create_tween()
	tween.tween_property($Player/Camera2D,"zoom",Vector2(0.6,0.6),0.5)
