extends Colectable

func colected():
	Globales.jugador.monedas += 1
	queue_free()
