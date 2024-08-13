extends Control

# Get the label text to put onto the menu labels
@onready var timer_seconds = %timer_seconds
@onready var timer_minutes = %timer_minutes
@onready var score = %score
@onready var level_number = $"../level_number"

# Menu labels
@onready var current_level = $current_level
@onready var time = $time
@onready var coins = $coins

# Stars
@onready var star_1 = $star1
@onready var star_2 = $star2
@onready var star_3 = $star3

# Timers
@onready var timer_1 = $timer1
@onready var timer_2 = $timer2


@onready var coin_sprite = $"../../coins"


func visibility():
	# When the user has completed the level these action are completed
	visible = true
	# Fix the coin infront of the menu
	coin_sprite.queue_free()
	
	# Change label text
	current_level.text += level_number.text
	time.text = "Time: " + timer_minutes.text + timer_seconds.text
	coins.text = "Score: " + score.text

	# Show star 1
	star_1.visible = true
	star_1.play("default")
	
	
	# Assign stars
	if level_number.text == "1":
		globle.level_1_stars = 1
	if level_number.text == "2":
		globle.level_2_stars = 1
	if level_number.text == "3":
		globle.level_3_stars = 1

	# Check star 2
	if int(score.text) == 5 or int(timer_seconds.text) < 8:
		if level_number.text == "1":
			globle.level_1_stars = 2
		if level_number.text == "2":
			globle.level_2_stars = 2
		if level_number.text == "3":
			globle.level_3_stars = 2
		# Delay so the star appears after animation is finished
		timer_1.start()
	
	# Check star 3
	if int(timer_seconds.text) < 8 and int(score.text) == 5 :
		if level_number.text == "1":
			globle.level_1_stars = 3
		if level_number.text == "2":
			globle.level_2_stars = 3
		if level_number.text == "3":
			globle.level_3_stars = 3
		# Delay so the star appears after animation is finished
		timer_2.start()


func _on_timer_1_timeout():
	# If the user meets requirements, make star 2 visible
	star_2.visible = true
	star_2.play("default", 1, true)


func _on_timer_2_timeout():
	# If the user meets requirements, make star 3 visible
	star_3.visible = true
	star_3.play("default", 1, true)


func _on_main_menu_pressed():
	# Launch main menu
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	visible = false


func _on_next_level_pressed():
	# Find next level using current level
	var next_level = int(level_number.text) + 1
	get_tree().change_scene_to_file("res://Scenes/level" + str(next_level) + ".tscn")
	visible = false


func _on_replay_level_pressed():
	# Restart level
	get_tree().reload_current_scene()


func _process(_delta):
	# Go to main menu if 'esc' key is pressed
	if Input.is_action_just_pressed("exit"):
		get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
