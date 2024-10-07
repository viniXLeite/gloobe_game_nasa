extends CharacterBody2D

var speed = 200

func _ready():
	velocity.x = 200

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	
	if collision:
		velocity.x = 0
		DialogueManager.show_example_dialogue_balloon(load("res://scripts/Gwenpool.dialogue"), "startTutorial")
	if Input.is_action_just_pressed("ui_right"):
		velocity.x = -200
