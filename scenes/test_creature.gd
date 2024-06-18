extends CharacterBody2D


var direction:Vector2
var speed = 70

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	move()



func move():
	get_direction()
	velocity = direction.normalized() * speed
	move_and_slide()


func get_direction():
	direction = Vector2(randf_range(-1.0, 1.0), randf_range(-1.0, 1.0))
	
