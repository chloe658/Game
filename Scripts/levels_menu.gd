extends Control


func _process(_delta):
	# Go to main menu if 'esc' key is pressed
	if Input.is_action_just_pressed("exit"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_level_1_pressed():
	# Go to level 1
	get_tree().change_scene_to_file("res://Scenes/level1.tscn")

func _on_level_2_pressed():
	# Go to level 2
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")

func _on_menu_pressed():
	# Go to main menu
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_level_3_pressed():
	# Go to level 3
	get_tree().change_scene_to_file("res://Scenes/level3.tscn")

