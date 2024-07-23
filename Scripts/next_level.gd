extends Node2D

@onready var level_timer = %timer_seconds
@onready var end_level = %end_level

func _on_body_entered(body):
	if body.name == "player":
		end_level.visibility()
		level_timer.stop()
