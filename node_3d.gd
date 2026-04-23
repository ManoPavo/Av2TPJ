extends Node3D

var velocidade = 2
var alvo = Vector3.ZERO
var direcao = Vector3.ZERO

func _ready():
	pass

func _process(delta):
	
	direcao = global_position.direction_to(alvo)
	position += direcao * velocidade * delta
	
	look_at(alvo, Vector3.UP)
	
		
