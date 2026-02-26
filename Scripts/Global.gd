extends Node
var lastPessoa=0
var last=0
var escolha
var roupa
var rosto
var cabeca
var pessoas=5
var day=0
var y=false
var x=false
var z=false
var sleep=false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	selMusic=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(last)
	prinder()
	if Global.lastPessoa==3:
		Global.sleep=true
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

func Days():
	if day==0:
		day=1
	elif day==1:
		day=2
	elif day==2:
		day=3
	elif day==3:
		get_tree().change_scene_to_file("res://Cenas/Fim.tscn")
		pass

func prinder():
	print(" ")
	print("ultima pessoa:",lastPessoa)
	print("dia:",day)
	print("last:",last)
	print("sleep:",sleep)
