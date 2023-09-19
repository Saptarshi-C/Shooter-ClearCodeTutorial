extends Node2D

var test_array: Array[String] = ["Test","Hello","World"]

# Called when the node enters the scene tree for the first time.
func _ready():
	$Logo.rotation_degrees = 90
	
	print(test_array[0])
	
	for i in test_array:
		print(i)

func _process(delta):
	$Logo.rotation_degrees += 100 * delta
	
#	if $Logo.rotation_degrees>180:
#		$Logo.rotation_degrees = 0
	
	if $Logo.position.x > 1000:
		$Logo.position.x = 0
		
#	print(Input.is_action_pressed("left"))
