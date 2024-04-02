extends RigidBody2D

const MAX_ROTATION = -45
const MAX_FORCE = 1000
const MIN_FORCE = 500
var force = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("ui_accept"):
		if rotation_degrees > MAX_ROTATION and force < MAX_FORCE:
			force += 10
			rotate(-0.01)
			print(force)
	
	if Input.is_action_just_released("ui_accept"):
		apply_impulse(Vector2(force, -force))
		force = 0
		
		
