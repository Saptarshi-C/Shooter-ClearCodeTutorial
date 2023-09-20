extends Node2D


func _on_gate_player_entered_gate(body):
	print(body)


func _on_player_fire_laser():
	print("Firin' ma laser")


func _on_player_fire_grenade():
	print("Boom")
