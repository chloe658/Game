extends Control

func _on_play_button_pressed():
	# Go to level 1
	get_tree().change_scene_to_file("res://Scenes/level1.tscn")


func _on_quit_button_pressed():
	# Close the game
	get_tree().quit()


func _on_levels_button_pressed():
	# Go to level menu
	get_tree().change_scene_to_file("res://Scenes/levels_menu.tscn")
