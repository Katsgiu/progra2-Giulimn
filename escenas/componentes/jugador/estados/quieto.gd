extends Estado

func enter():
	jugador.sprite.play("Quieto")
	

func physics_update(delta):
	jugador.velocity.y = jugador.gravedad
	jugador.move_and_slide()
	
	if not jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Cayendo")
		
	if jugador.is_on_floor():
		if Input.is_action_just_pressed("mover_derecha") or Input.is_action_just_pressed("mover_izquierda") :
			get_parent().ir_a_estado_siguiente("Corriendo")
			
	if jugador.is_on_floor() and Input.is_action_just_pressed("saltar"):
		get_parent().ir_a_estado_siguiente("Saltando")
			
	if Input.is_action_just_pressed("atacar"):
		get_parent().ir_a_estado_siguiente("Atacando")
