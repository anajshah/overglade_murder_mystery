class_name DialogueController

extends Node

var current_dialogue : Dialogue

@onready var dialogue_screen : Panel = $"../CanvasLayer/DialogueScreen"
@onready var npc_name_text : Label = $"../CanvasLayer/DialogueScreen/Dialogue_panel/NPCName"
@onready var dialogue_text : Label = $"../CanvasLayer/DialogueScreen/Dialogue_panel/Dialogue"

#@onready var npc_name_text : Panel = $"../CanvasLayer/DialogueScreen/Dialogue_panel/NPCName"
#@onready var dialogue_text : Panel = $"../CanvasLayer/DialogueScreen/Dialogue_panel/Dialogue"

#@onready var player: ProtoController = $".."

var visible_chars : float
var current_line : int

func _ready ():
	#close_screen()
	pass

func set_dialogue (dialogue: Dialogue):
	current_dialogue = dialogue
	
	dialogue_screen.visible = true
	npc_name_text.text = dialogue.npc_name
	
	current_line = 0
	set_line(dialogue.lines[0])
	
func _process(delta: float) -> void:
	visible_chars += 30*delta
	dialogue_text.visible_characters = int(visible_chars)

func set_line (line : String):
	visible_chars = 0
	dialogue_text.visible_charecters = 0
	dialogue_text.text = line

func close_screen ():
	dialogue_screen.visible = false
	current_dialogue = null
