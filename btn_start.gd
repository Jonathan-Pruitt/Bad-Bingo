extends Sprite2D

#VARIABLES
var current_y_loc
var object_loc
var y_origin
var min_loc
var ascending : bool = true
const range = 10

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#set the initial object location values
	object_loc = global_position
	y_origin = object_loc.y
	current_y_loc = y_origin
	min_loc = y_origin - range
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	_bounce()
	pass

func _bounce():
	if ascending:
		current_y_loc -= .3
		ascending = min_loc <= current_y_loc
	else:
		current_y_loc += .3
		ascending = y_origin <= current_y_loc
	
	object_loc.y = current_y_loc
	global_position = object_loc
