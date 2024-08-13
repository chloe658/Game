extends Node2D

@onready var level_timer = %timer_seconds
@onready var end_level = %end_level

func _on_body_entered(body):
	# When player finished the level, show end level menu and stop timer
	if body.name == "player":
		end_level.visibility()
