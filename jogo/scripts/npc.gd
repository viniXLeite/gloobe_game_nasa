extends CharacterBody2D

func _ready():
	pass

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		velocity.x = 0
		DialogueManager.show_example_dialogue_balloon(load("res://scripts/Gwenpool.dialogue"), "startResearch")

func _process(delta):
		if Input.is_action_just_pressed("ui_up"):
			velocity.x = -200
		if Input.is_action_just_pressed("ui_right"):
			velocity.x = 200
