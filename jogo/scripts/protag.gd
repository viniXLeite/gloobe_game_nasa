extends CharacterBody2D

@onready var actionable_finder: Area2D = $Direction/ActionableFinder

func _trigger(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		var actionables = actionable_finder.get_overlapping_areas()
		if actionables.size() > 0:
			actionables[0].action()
		return
