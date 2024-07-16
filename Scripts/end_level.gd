extends Control


#get the label text to put onto the end_level labels.
@onready var level_timer = %level_timer
@onready var score = %score
@onready var level = $"../level"

#labels
@onready var current_level = $current_level
@onready var time = $time
@onready var coins = $coins


func visibility():
	visible = true
	
	#change label text
	current_level.text = level.text
	time.text = "Time: " + level_timer.text
	coins.text = score.text
	

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	visible = false

func _on_next_level_pressed():
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")
	visible = false
	
