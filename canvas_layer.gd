extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready():
	var sprite = $"Enemy/StaticBody2D/CollisionShape2D/25Dp-2"
	sprite.flip_h = 1
	var anim = $"Pokimon Capture/AnimationPlayer"
	var anim2 = $"Pokimon Capture/AnimationPlayer2"
	var anim3 = $"WindGust/AnimationPlayer"
	var anim4 = $"WindGust/AnimationPlayer2"
	anim.play("Pokeball")
	anim2.play("Caught")
	anim3.play("Pokeball")
	anim4.play("Caught")
	anim.speed_scale = 200
	anim2.speed_scale =  200
	anim3.speed_scale = 200
	anim4.speed_scale =  200
	anim3.speed_scale = 1
	anim4.speed_scale =  1
	var sprite1 = $"Player/StaticBody2D/CollisionShape2D/WorldEnvironment/AnimationPlayer"
	#sprite.play("Glow")
	#await get_tree().create_timer(1).timeout
	var sp =$"Player/StaticBody2D"
	sp.visible = false
	anim.play("Pokeball")
	anim2.play("Caught")
	await get_tree().create_timer(2).timeout
		
	sp.visible = true
	sprite1.play("Glow out")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	var but = $Button
	var attack_name = but.text
	$Marker2D/AnimationPlayer.play(attack_name)
	var sprite = $"Player/StaticBody2D/CollisionShape2D/WorldEnvironment/AnimationPlayer"
	sprite.play("attackmovin")
	print(attack_name)


func _on_button_2_pressed():
	
	var anim = $"Pokimon Capture/AnimationPlayer"
	var anim2 = $"Pokimon Capture/AnimationPlayer2"
	anim.speed_scale = 1
	anim2.speed_scale =  1
	anim.play("Pokeball")
	anim2.play("Caught")
	await get_tree().create_timer(1.5).timeout
	var sprite = $"Enemy/StaticBody2D/CollisionShape2D/WorldEnvironment/AnimationPlayer"
	sprite.play("Glow")
	await get_tree().create_timer(1).timeout
	var sp =$"Enemy/StaticBody2D"
	sp.visible = false
	

	
