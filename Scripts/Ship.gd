extends Node2D

export var rotationVel : float = 5.0
var shootScene = preload("res://Scenes/Shoot.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left"):
		rotate(-delta*rotationVel)
	if Input.is_action_pressed("right"):
		rotate(delta*rotationVel)
	if Input.is_action_just_pressed("shoot"):
		var shoot = shootScene.instance()
		shoot.position = self.get_global_position()
		shoot.rotation = self.rotation
		shoot.direction = Vector2(cos(rotation),sin(rotation))
		get_tree().get_root().add_child(shoot)
	


