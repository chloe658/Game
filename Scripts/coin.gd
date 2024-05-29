extends Area2D

@onready var score = %score

func _on_body_entered(body):
	score.add_score()
	queue_free()
