extends CharacterBody2D

@export var velocidad : float = 250
@export var impulso_salto : float = 100
@export var friccion_salto :float = 1
@export var gravedad : float = 100
@export var sprite : AnimatedSprite2D

@export var hud : Control

var vida : int
var max_vida : int = 500
var magia : int
var max_magia : int = 10
var monedas  :int

func _ready():
	inicializar_jugador()
	actualizar_hud()

func _physics_process(delta):
	pass

func inicializar_jugador():
	vida = max_vida
	magia = max_magia
	monedas = 0

func morir():
	queue_free()

func herir(cantidad : int):
	vida -= cantidad
	if vida <= 0:
		morir()

func actualizar_hud():
	hud.vida = vida
	hud.max_vida = max_vida
	hud.magia = magia
	hud.max_magia = max_magia
	hud.monedas = monedas
	hud.actualizar_valores()
