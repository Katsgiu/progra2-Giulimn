extends Node

var datos_guardados : Dictionary = {"monedas" : 100}

func _ready():
	Globales.save_manager = self
	guardar()

func guardar():
	datos_guardados.monedas = Globales.jugador.monedas
	var archivo_guardado = FileAccess.open("user://archivo_guardado.save", FileAccess.WRITE)
	archivo_guardado.store_line(JSON.stringify(datos_guardados))
	

func cargar():
	var archivo_guardado = FileAccess.open("user://archivo_guardado.save", FileAccess.READ)
	var diccionario = archivo_guardado.get_line()
	var json =JSON.new()
	json.parse(diccionario)
	datos_guardados = json.data
