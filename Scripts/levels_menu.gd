extends Control

func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/level1.tscn")

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")

func _on_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
