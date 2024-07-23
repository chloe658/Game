extends Label

@onready var level_timer = %timer_minutes

var seconds = 0
var minutes = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	seconds += delta
	if seconds >= 60:
		minutes += 1
		seconds -= 60
	if seconds < 10:
		level_timer.text = str(int(minutes)) + ":"
	else:
		level_timer.text = str(int(minutes)) + ":"
		
func stop():
	var final_time = level_timer.text
	print(final_time)
