extends Control


@onready var button: Button = $HBoxContainer/Button
@onready var button_2: Button = $HBoxContainer/Button2
@onready var button_3: Button = $HBoxContainer/Button3


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://final/loose.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://final/win.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://final/loose.tscn")
