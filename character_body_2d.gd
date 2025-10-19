extends CharacterBody2D

@export var speed := 200

func _physics_process(delta):
	var direction = Vector2.ZERO

	# Movimiento con flechas o WASD
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_down"):
		direction.y += 1
	if Input.is_action_pressed("ui_up"):
		direction.y -= 1

	# Normaliza para que diagonal no sea más rápida
	if direction != Vector2.ZERO:
		direction = direction.normalized()
		velocity = direction * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()
