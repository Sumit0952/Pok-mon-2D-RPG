extends Area2D

#var ui_scene
#var collision =false
#
#func _ready():
	## Load the UI scene
	#ui_scene = preload("res://canvas_layer.tscn").instantiate()
	#
	## Add the UI scene as a child of the current scene
	#add_child(ui_scene)
	#
	## Access the AnimationPlayer
	#var animation_player = ("UI/AnimationPlayer")
#
	#if animation_player:
		#if collision == true:
			
var battle = preload("res://canvas_layer.tscn")
@onready var animationPlayer = $"../UI/AnimationPlayer"


func _on_body_entered(body):
	if "Player" in body.name:
		$"../Player".playIdle()
		$"../UI/AnimationPlayer".play("TransIn")
		get_tree().paused = true
		await get_tree().create_timer(1.5).timeout
		var battleTemp = battle.instantiate()
		get_parent().add_child(battleTemp)
		queue_free()
		animationPlayer.play("TransOut")
		get_tree().paused = false
		#
		#
		#
		#
		#animationPlayer.play("TransOut")
		
		
		
		 #if i do not quee free it will keep making these scene untill i am inside the body 


#func _on_mouse_entered():
	#animationPlayer.play("TransIn")
	#await get_tree().creat_timer(1.5).timeout
	#var battleTemp = battle.instantiate()
	#get_parent().add_child(battleTemp)
	#queue_free()
	#animationPlayer.play("TransOut")
