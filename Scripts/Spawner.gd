extends Node2D

var asteroidScene = preload("res://Scenes/Asteroid.tscn")
var rng = RandomNumberGenerator.new()


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


#func _process(delta):
#	pass

#Cria um número aleatório e uma instancie do asteroid
func _on_Timer_timeout():
	var asteroid = asteroidScene.instance()
	asteroid.position = randPosition()
	get_tree().get_root().add_child(asteroid)

#Cria uma posição aleatória ao redor da tela
func randPosition():
	var pos = Vector2(0,0)
	var l = rng.randi_range(0,3)
	if l == 0:
		pos.x = -5
		pos.y = rng.randi_range(0,600)
	elif l==1:
		pos.x = rng.randi_range(0,1024)
		pos.y = -5
	elif l==2:
		pos.x = 1029
		pos.y = rng.randi_range(0,600)
	elif l==3:
		pos.x = rng.randi_range(0,1024)
		pos.y = 605
	return pos




