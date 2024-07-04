extends Node2D

var current_level = 1

@onready var timer = $Timer

func _on_body_entered(body):
	if body.name == "player":
		timer.start()

func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")
	current_level += 1
	#currently this doesn't work as it will always take the player to level 2.
