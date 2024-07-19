extends RigidBody2D

@export var speed = Vector2(100, 0)

func _ready():
	linear_velocity = speed

func _integrate_forces(state):
	var new_velocity = state.linear_velocity
	if (speed.x != 0 and sign(new_velocity.x) != sign(speed.x)) or (speed.y != 0 and sign(new_velocity.y) != sign(speed.y)):
		var speed_magnitude = speed.length()
		var new_direction = new_velocity.normalized()
		var constant_speed = new_direction * speed_magnitude
		speed.x = constant_speed.x
		speed.y = constant_speed.y
	state.linear_velocity = speed
