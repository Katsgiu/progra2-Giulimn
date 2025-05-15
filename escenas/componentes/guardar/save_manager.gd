extends Node

var datos_guardados : Dictionary = {"monedas" : 100, "nombre" : "carlos"}

func _ready():
	Globales.save_manager = self
	guardar()

func guardar():
	datos_guardados.monedas = Globales.jugador.monedas
	var archivo_guardado = FileAccess.open("user://archivo_guardado.save", FileAccess.WRITE)
	archivo_guardado.store_line(JSON.stringify(datos_guardados))
	

func cargar():
	var archivo_guardado = FileAccess.open("user://archivo_guardado.save", FileAccess.READ)
	var texto = archivo_guardado.get_line()
	var json = JSON.new()
	json.parse(texto)
	datos_guardados = json.data
	
	Globales.jugador.monedas = datos_guardados.monedas
