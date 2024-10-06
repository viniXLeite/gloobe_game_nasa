extends CharacterBody2D

var speed = 6000

func moving(delta):
	velocity.x = speed * delta
	move_and_slide()

func _physics_process(delta):
	moving(delta)
