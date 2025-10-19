extends Node2D


var velocidad = 100.0 #luis esto es la velocidad(en pixels)
var pantalla_ancho= 0#aqui creo una variable para ver cuantos pixeles tiene mi pantalla

func _ready():#esto pasa siempre al principio
	pantalla_ancho = get_viewport_rect().size.x  # guarda el ancho de la pantalla

func _process(delta):#esto pasa cada frame
	position.x = velocidad * delta #delta es el tiempo q pasa entre frame osea muy poco
	if position.x > pantalla_ancho :
		position.x = 0
