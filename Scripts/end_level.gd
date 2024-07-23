extends Control


#get the label text to put onto the end_level labels.
@onready var timer_seconds = %timer_seconds
@onready var timer_minutes = %timer_minutes
@onready var score = %score
@onready var level = $"../level"

#labels
@onready var current_level = $current_level
@onready var time = $time
@onready var coins = $coins

#stars
@onready var star_1 = $star1
@onready var star_2 = $star2
@onready var star_3 = $star3

#timers
@onready var timer_1 = $timer1
@onready var timer_2 = $timer2



func visibility():
	visible = true
	
	#change label text
	current_level.text = level.text
	time.text = "Time: " + timer_minutes.text + timer_seconds.text
	coins.text = "Score: " + score.text

	#Show star 1
	star_1.visible = true
	star_1.play("default")
	
	#Check star 2 and star 3
	if int(score.text) == 5 or int(timer_seconds.text) < 8:
		timer_1.start()
	
	if int(timer_seconds.text) < 8 and int(score.text) == 5 :
		timer_2.start()
	

func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	visible = false

func _on_next_level_pressed():
	get_tree().change_scene_to_file("res://Scenes/level2.tscn")
	visible = false
	
func _on_timer_1_timeout():
	star_2.visible = true
	star_2.play("default", 1, true)
	

func _on_timer_2_timeout():
	var number
	star_3.visible = true
	star_3.play("default", 1, true)
