extends CharacterBody2D

var npc_in_range = false

func _physics_process(delta):
	if npc_in_range:
		if Input.is_action_just_pressed("ui_accept"):
			DialogueManager.show_dialogue_balloon(load("res://scripts/Gwenpool.dialogue"), "start")
			return

func _on_detection_area_body_entered(body):
	if body.has_method("npc"):
		npc_in_range = true
		
func _on_detection_area_body_exited(body):
	if body.has_method("npc"):
		npc_in_range = false
