extends Node2D

func _process(_delta):
	# Go to main menu if 'esc' key is pressed
	if Input.is_action_just_pressed("exit"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
