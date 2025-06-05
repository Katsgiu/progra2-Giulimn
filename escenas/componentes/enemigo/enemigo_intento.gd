extends Enemy

@export var hitbox : Area2D

@onready var posicion_inicial : Vector2 = position
@onready var animation_slime = $Animaciones

var distancia : float = 50
var velocidad : float = 4000
var direccion : Vector2 = Vector2(1,0)
var slime : CharacterBody2D
var atacando = false

func _physics_process(delta: float):
	if atacando:
		return

	if not atacando:
		velocity = direccion * velocidad * delta
		animation_slime.play("Slime_Move")
		if direccion.x < 0:
			animation_slime.flip_h = false
		elif direccion.x > 0:
			animation_slime.flip_h = true
		
		if position.distance_to(posicion_inicial) >= distancia:
			direccion = position.direction_to(posicion_inicial)
		
			
	move_and_slide()
	
	
func _on_timer_ataque_2_timeout():
	for cuerpo in hitbox.get_overlapping_bodies():
		if cuerpo.is_in_group("Jugador"):
			atacando = true
			if atacando:
				animation_slime.play("Slime_Attack")
				cuerpo.herir(40)
		
		else:
			atacando = false
	
	
			
