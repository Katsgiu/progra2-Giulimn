extends Estado

func enter():
	jugador.sprite.play("Saltando")

func physics_update(_delta):
	if Input.is_action_just_pressed("saltar"):
		jugador.velocity.y = -jugador.speed
		jugador.move_and_slide()
		
