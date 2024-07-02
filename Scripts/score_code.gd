extends Node2D


@onready var score = %score

var coins = 0

func add_score():
	coins +=1
	score.text = "Score: " + str(coins)
