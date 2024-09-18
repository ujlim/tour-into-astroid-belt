extends Control

@export var level_scene: PackedScene = load("res://scenes/level.tscn")

func _ready():
	$CenterContainer/VBoxContainer/Label2.text = $CenterContainer/VBoxContainer/Label2.text + str(Global.score)

#func _process(_delta):
#	if Input.is_action_just_pressed("shoot"):
#		get_tree().change_scene_to_packed(level_scene)

func _input(event):
	if event.is_action_pressed("shoot"):
		get_tree().change_scene_to_packed(level_scene)
