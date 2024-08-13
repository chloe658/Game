extends Label

@onready var level_timer = %timer_minutes

var seconds = 0
var minutes = 0

func _process(delta):
	# Calculate seconds using frames
	seconds += delta
	if seconds >= 60:
		minutes += 1
		seconds -= 60
	level_timer.text = str(int(minutes)) + ":"
