extends Node2D
@export var body:CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playMusic()
	check_posicao(body)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func check_posicao(body):
	if Global.last==0:
		#villa
		body.global_position =Vector2(73,489)
		#Global.last=0
	if Global.last==1:
		#jornal
		body.global_position =Vector2(332,489)
		#Global.last=1
	if Global.last==2:
		#trem
		body.global_position =Vector2(739,489)
		#Global.last=2

func playMusic():
	if Global.song==true:
		$Music/LovelyTown.play()
	elif Global.song==false:
		$Music/LovelyTown.stop()
