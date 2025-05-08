extends Area2D

class_name Colectable

func _physics_process(delta: float):
	for cuerpo in get_overlapping_bodies():
		if cuerpo.is_in_group("Jugador"):
			colected()

func colected():
	pass
