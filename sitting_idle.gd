extends Node3D

@onready var anim_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	anim_player.get_animation("mixamo_com").loop = true
	anim_player.play("mixamo_com")
