extends Node

@onready var score_lable = $score_lable

var score = 0

func add_score():
	score +=1
	score_lable.text = "Score: " + str(score)

