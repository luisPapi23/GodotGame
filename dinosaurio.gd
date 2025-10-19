extends Node2D


var velocidad = 100.0 #luis esto es la velocidad(en pixels)
var pantalla_ancho= 0#aqui creo una variable para ver cuantos pixeles tiene mi pantalla

func _ready():#esto pasa siempre al principio
	pantalla_ancho = get_viewport_rect().size.x  # guarda el ancho de la pantalla

#


func _physics_process(delta):
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_right")
	input_vector = input_vector.normalized()
	
	
