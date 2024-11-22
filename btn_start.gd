extends Sprite2D

#VARIABLES
var y_loc = 0
var button_loc
var max_y_loc
var range = 10
var ascending = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button_loc = global_position
	y_loc = button_loc.y
	max_y_loc = y_loc
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_bounce()
	pass

# _bounce handles the start button moving up/down
func _bounce():
	if ascending:
		y_loc -= .5
		ascending = max_y_loc - range != y_loc
	else:
		y_loc += .5
		ascending = max_y_loc == y_loc
	button_loc.y = y_loc
	global_position = button_loc
