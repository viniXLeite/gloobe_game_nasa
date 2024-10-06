extends CharacterBody2D

@onready var actionable_finder: Area2D = $ActionableFinder



func _trigger(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
		return

var speed = Vector2(200, 0)

#signal collision_signal

func _physics_process(delta):
	
	var collision = move_and_collide(speed * delta)
	
	if collision:
		speed = Vector2()
		DialogueManager.show_example_dialogue_balloon(load("res://scripts/Gwenpool.dialogue"), "start")
		
	
#func _on_collision_signal():
#	print("Collision detected! Triggering response.")
