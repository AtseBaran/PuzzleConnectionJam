extends Area2D

func _on_body_entered(body):
	if body.name == "Light":
		body.speed = Vector2(0,0)
