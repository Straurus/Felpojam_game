extends Control
var i

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	checkCamera()
	if Input.is_action_pressed("ui_close_dialog"):
		$".".show()
		Global.camera=false
	if Global.song == true:
		$CenterContainer/GridContainer/ButtonMusic.button_pressed=true
	else:
		$CenterContainer/GridContainer/ButtonMusic.button_pressed=false
	pass

func checkCamera():
	if Global.camera==true:
		$CenterContainer/GridContainer/Sprite3/Camera2D.enabled=false
	else:
		$CenterContainer/GridContainer/Sprite3/Camera2D.enabled=true

func _on_ButtonMusic_toggled(button_pressed):
	if $CenterContainer/GridContainer/ButtonMusic.button_pressed==true:
		Global.song = true
	else:
		Global.song = false
	pass 
	


func _on_Button3_pressed():
	get_tree().free()


func _on_Button_pressed():
	Global.camera=true
	$".".hide()
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://Cenas/Menu.tscn")
	pass # Replace with function body.
