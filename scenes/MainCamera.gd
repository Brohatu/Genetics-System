extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		Input.use_accumulated_input = true
		var mouse_motion = Input.get_last_mouse_velocity()
		position -= mouse_motion * delta #* Vector2.ONE
