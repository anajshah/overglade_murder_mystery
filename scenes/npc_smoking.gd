extends CharacterBody3D

@onready var area_3d: Area3D = $Area3D
@onready var text: Label3D = $Label3D


func _ready() -> void:
	text.visible = false
	area_3d.body_entered.connect(_on_area_entered)
	area_3d.body_exited.connect(_on_area_exited)

func _on_area_entered(body: Node3D) -> void:
	if body.name == "ProtoController":
		text.visible = true

func _on_area_exited(body: Node3D) -> void:
	if body.name == "ProtoController":
		text.visible = false
