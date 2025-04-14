extends Area2D

func _ready():
	print("Ready!")  # Just for debugging
	
func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		print("Clicked!")
		get_tree().change_scene_to_file("res://scenes/homescreen.tscn")
