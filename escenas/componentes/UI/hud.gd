extends Control

var vida : int
var max_vida : int
var magia : int
var max_magia : int
var monedas : int

@onready var barra_vida = $MarginContainer/BarrasContainer/VidaContianer/BarraVida
@onready var texto_vida = $MarginContainer/BarrasContainer/VidaContianer/CantidadVida

@onready var barra_magia = $MarginContainer/BarrasContainer/MagiaContainer/BarraMagia
@onready var texto_magia = $MarginContainer/BarrasContainer/MagiaContainer/CantidadMagia

@onready var texto_moneda = $MarginContainer/MonedasContainer/CantidadMonedas


func _ready():
	actualizar_valores()

func _process(delta):
	barra_vida.value = vida
	texto_vida.text = str(vida)
	barra_magia.value = magia
	texto_magia.text = str(magia)
	texto_moneda.text = str(monedas)

func actualizar_valores():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia
