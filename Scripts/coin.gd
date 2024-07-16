extends Area2D

@onready var score_code = %score_code

func _on_body_entered(_body):
	score_code.add_score()
	queue_free()
