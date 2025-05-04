extends Estado

func enter():
	jugador.sprite.play("Corriendo")
	

func physics_update(_delta):
	
	

	if Input.is_action_pressed("mover_derecha"):
		jugador.velocity.x = jugador.velocidad
		jugador.move_and_slide()
		jugador.sprite.flip_h = false
		
	elif Input.is_action_pressed("mover_izquierda"):
		jugador.velocity.x = -jugador.velocidad
		jugador.move_and_slide()
		jugador.sprite.flip_h = true
	
	else:
		jugador.velocity.x = 0
		get_parent().ir_a_estado_siguiente("Quieto")
		
	if Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_estado_siguiente("Atacando")
