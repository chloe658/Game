extends Node2D


@onready var score = %score

var coins = 0

func add_score():
	# Add score and update label
	coins += 1
	score.text = str(coins)
