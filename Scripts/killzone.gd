extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	# Make sure the body is the player to reduce errors
	if body.name == "player":
		body.die()
		timer.start()

func _on_timer_timeout():
	# Restart level
	get_tree().reload_current_scene()
