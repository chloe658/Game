extends Node2D

var current_level = 1

func _on_area_2d_body_entered(body):
	var next_level = "res://Scenes/level" + str(current_level + 1) + ".tscn"
	get_tree().change_scene_to_file(next_level)
	current_level += 1
	print(get_tree())
