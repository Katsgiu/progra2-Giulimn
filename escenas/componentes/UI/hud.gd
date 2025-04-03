extends Control

var vida = 100
var max_vida = 300
var magia = 20
var max_magia = 100
var monedas

@onready var barra_vida = $MarginContainer/BarrasContainer/VidaContianer/BarraVida
@onready var texto_vida = $MarginContainer/BarrasContainer/VidaContianer/CantidadVida

@onready var barra_magia = $MarginContainer/BarrasContainer/MagiaContainer/BarraMagia
@onready var texto_magia = $MarginContainer/BarrasContainer/MagiaContainer/CantidadMagia

@onready var texto_moneda = $MarginContainer/MonedasContainer/CantidadMonedas

func _ready():
	barra_vida.max_value = max_vida
	barra_magia.max_value = max_magia

func _process(delta):
	barra_vida.value = vida
	texto_vida.text = str(vida)
	barra_magia.value = magia
	texto_magia.text = str(magia)
