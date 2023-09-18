extends Sprite2D

var pos: Vector2 = Vector2(300,200)
const speed: int = 10
var test_scale: int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	position = pos
	
	var test_rotation = 45
	rotation_degrees = test_rotation
	
	test_scale = 2
	scale = Vector2.ONE * test_scale


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += speed
	test_scale += 1
	scale = Vector2.ONE * test_scale
