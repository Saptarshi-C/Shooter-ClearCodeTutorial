extends Node2D


var laser_scene: PackedScene = preload("res://scenes/projectiles/laser.tscn")
var grenade_scene: PackedScene = preload("res://scenes/projectiles/grenade.tscn")


func _on_gate_player_entered_gate(body):
	print(body)


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
