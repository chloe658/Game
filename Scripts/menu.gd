extends Button

func _on_pressed():
	# Go to main menu
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
