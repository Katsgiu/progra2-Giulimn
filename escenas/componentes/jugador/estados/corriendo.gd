extends Estado

func enter():
	jugador.sprite.play("Corriendo")
	

func physics_update(delta):
	var direccion = Input.get_axis("mover_izquierda", "mover_derecha")
	
	if direccion == 0:
		jugador.velocity.x = 0
		get_parent().ir_a_estado_siguiente("Quieto")

	else:
		if direccion <0:
			jugador.sprite.flip_h = true
		
		else:
			jugador.sprite.flip_h = false
		
		jugador.velocity.x = direccion * jugador.velocidad
		
		
	jugador.move_and_slide()

	if not jugador.is_on_floor():
			get_parent().ir_a_estado_siguiente("Cayendo")
	
	if Input.is_action_just_pressed("saltar"):
		get_parent().ir_a_estado_siguiente("Saltando")
	
	if Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_estado_siguiente("Atacando")

















	#if Input.is_action_pressed("mover_derecha"):
	#	jugador.velocity.x = jugador.velocidad
	#	jugador.move_and_slide()
	#	jugador.sprite.flip_h = false
		
	#elif Input.is_action_pressed("mover_izquierda"):
	#	jugador.velocity.x = -jugador.velocidad
	#	jugador.move_and_slide()
	#	jugador.sprite.flip_h = true
	
	#else:
	#	jugador.velocity.x = 0
	#	get_parent().ir_a_estado_siguiente("Quieto")
		
	#if Input.is_action_just_pressed("atacar"):
	#	get_parent().ir_a_estado_siguiente("Atacando")
