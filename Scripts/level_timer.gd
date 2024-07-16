extends Label

@onready var level_timer = %level_timer

var seconds = 0
var minutes = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	seconds += delta
	if seconds >= 60:
		minutes += 1
		seconds -= 60
	if seconds < 10:
		level_timer.text = str(int(minutes)) + ":" + "0" + str(int(seconds))
	else:
		level_timer.text = str(int(minutes)) + ":" + str(int(seconds))
		
func stop():
	var final_time = level_timer.text
	print(final_time)
