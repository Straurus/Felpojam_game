extends Node

var last=0
var escolha
var roupa
var rosto
var cabeca
var pessoas=5

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	selMusic=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(last)
	pass

var selMusic
var audio
var song=false
func selcMusic():
	if selMusic==0:
		audio=get_node("main")
	elif selMusic==1:
		get_node("main").stop()

func playMusic():
	audio.play()
	
func stopMusic():
	audio.stop()
	
func checkMusic():
	selcMusic()
	if Global.song==false:
		stopMusic()
	else:
		playMusic()
