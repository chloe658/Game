extends Area2D

@onready var score_code = %score_code


func _on_body_entered(_body):
	# Remove coin once collected and add score
	score_code.add_score()
	queue_free()
