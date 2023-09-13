extends Node2D

export var velocity:float = 40.0
var pos = Vector2(539,287)



# Called when the node enters the scene tree for the first time.
func _ready():
	pass



func _process(delta):
	var direction = (pos-position).normalized()
	position += direction*delta*velocity
