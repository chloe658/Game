extends Control

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/level1.tscn")

func _on_quit_button_pressed():
	get_tree().quit()


func _on_levels_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/levels_menu.tscn")
