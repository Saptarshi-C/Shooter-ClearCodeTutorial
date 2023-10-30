extends RigidBody2D


const grenadeSpeed: int = 750

func explode():
	$AnimationPlayer.play("explosion")
