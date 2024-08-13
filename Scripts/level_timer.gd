extends Label

@onready var level_timer = %timer_seconds

var seconds = 0
var minutes = 0


func _process(delta):
	# Calculate seconds using frames
	seconds += delta
	if seconds >= 60:
		minutes += 1
		seconds -= 60
	if seconds < 10:
		level_timer.text = "0" + str(int(seconds))
	else:
		level_timer.text = str(int(seconds))
