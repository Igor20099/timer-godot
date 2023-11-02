extends Node2D

@export var seconds = 10;
@onready var label = $CanvasLayer/VBoxContainer/Label
@onready var timer = $Timer
@onready var button = $CanvasLayer/VBoxContainer/MarginContainer/Button

func _ready():
	label.text = str(seconds)



func _on_button_pressed():
	timer.start()
	button.disabled = true
	


func _on_timer_timeout():
	if seconds == 0:
		timer.stop()
		seconds = 10
		label.text = str(seconds)
		button.disabled = false
		return
	seconds -= 1
	label.text = str(seconds)
