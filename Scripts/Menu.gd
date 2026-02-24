extends Control


var i 

func _ready():
#	Music.selMusic=0
#	Music.checkMusic()
	pass # Replace with function body.

func _process(delta):
	if Global.song==true:
		get_node("CenterContainer/GridContainer/HSplitContainer/ButtonMusic").button_pressed=true
	elif Global.song==false:
		get_node("CenterContainer/GridContainer/HSplitContainer/ButtonMusic").button_pressed=false
	pass

func _on_Button_pressed():
	Global.last=0
	get_tree().change_scene_to_file("res://Cenas/casa.tscn")
	#queue_free()


func _on_Button2_pressed():
	get_tree().change_scene_to_file("")
	#queue_free()


func _on_Button3_pressed():
	get_tree().free()


func _on_ButtonMusic_toggled(button_pressed):
	if get_node("CenterContainer/GridContainer/HSplitContainer/ButtonMusic").button_pressed==true:
		Global.song = true
		#Global.checkMusic()
		$LovelyTown.play()
		pass
	else:
		Global.song = false
		#Global.checkMusic()
		$LovelyTown.stop()
		pass
