extends Control

# Stars
@onready var level_1_star_1 = $stars/level1star1
@onready var level_1_star_2 = $stars/level1star2
@onready var level_1_star_3 = $stars/level1star3
@onready var level_2_star_1 = $stars/level2star1
@onready var level_2_star_2 = $stars/level2star2
@onready var level_2_star_3 = $stars/level2star3
@onready var level_3_star_1 = $stars/level3star1
@onready var level_3_star_2 = $stars/level3star2
@onready var level_3_star_3 = $stars/level3star3


func _ready():
	if globle.level_1_stars != 0:
		level_1_star_1.visible = true
	if globle.level_1_stars >= 2:
		level_1_star_2.visible = true
	if globle.level_1_stars >2:
		level_1_star_3.visible = true
	
	if globle.level_2_stars != 0:
		level_2_star_1.visible = true
	if globle.level_2_stars >= 2:
		level_2_star_2.visible = true
	if globle.level_2_stars >2:
		level_2_star_3.visible = true
	
	if globle.level_3_stars != 0:
		level_3_star_1.visible = true
	if globle.level_3_stars >= 2:
		level_3_star_2.visible = true
	if globle.level_3_stars >2:
		level_3_star_3.visible = true


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
