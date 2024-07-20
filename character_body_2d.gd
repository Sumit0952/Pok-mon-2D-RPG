extends CharacterBody2D

const SPEED = 300.0
const SPEED2 = 600.0
@onready var anim = $AnimationTree

# Called when the node enters the scene tree for the first time.
func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var input_direction2 = Input.get_vector("shl", "shr", "shu", "shd")
	if input_direction:
		velocity = input_direction * SPEED
		anim.get("parameters/playback").travel("Walk")
		
		anim.set("parameters/Run/blend_position",input_direction2)
		anim.set("parameters/Idle/blend_position",input_direction)
		anim.set("parameters/Walk/blend_position",input_direction)
	
	
	if input_direction2:
		velocity = input_direction2 * SPEED2
		anim.get("parameters/playback").travel("Run")
		anim.set("parameters/Run/blend_position",input_direction2)
		anim.set("parameters/Idle/blend_position",input_direction)
		anim.set("parameters/Walk/blend_position",input_direction)
		
	
	else:
		#velocity = Vector2(0,0)
		anim.get("parameters/playback").travel("Idle")
		velocity.x = move_toward(velocity.x, 0, 20)
		velocity.y = move_toward(velocity.y, 0, 20)
func _physics_process(delta):
	
	get_input()
	move_and_slide()


func playIdle():
	anim.get("parameters/playback").travel("Idle")
