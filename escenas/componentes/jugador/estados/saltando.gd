extends Estado

func enter():
	jugador.sprite.play("Saltando")
	jugador.velocity.y = -jugador.impulso_salto
	

func physics_update(_delta):
	jugador.velocity.y += jugador.friccion_salto
	jugador.move_and_slide()
	
	var direccion = Input.get_axis("mover_izquierda","mover_derecha")
	jugador.velocity.x = direccion * jugador.velocidad
	
	if jugador.velocity.y > 0:
		get_parent().ir_a_estado_siguiente("Cayendo")
	
	if jugador.is_on_floor():
		get_parent().ir_a_estado_siguiente("Quieto")
		
