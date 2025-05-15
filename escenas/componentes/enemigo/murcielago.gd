extends Enemy

@export var hitbox : Area2D

@onready var posicion_inicial : Vector2 = position
@onready var animation_bat = $AnimatedSprite2D


var distancia : float = 30
var velocidad : float = 3400
var direccion : Vector2 = Vector2(0,1)
var bat : CharacterBody2D


func _physics_process(delta: float):
	velocity = direccion * velocidad * delta
	animation_bat.play("Vuelo")
	if direccion.y < 0:
		animation_bat.flip_h = false
	elif direccion.y > 0:
		animation_bat.flip_h = true
	

	
	if position.distance_to(posicion_inicial) >= distancia:
		direccion = position.direction_to(posicion_inicial)

			
	move_and_slide()



func _on_timer_murcielago_timeout():
		for cuerpo in hitbox.get_overlapping_bodies():
			
			if cuerpo.is_in_group("Jugador"):
				animation_bat.play("Vuelo")
				cuerpo.herir(20)
