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
#var last:int


func check_posicao(body):
	if Global.last==0:
		#casa
		body.global_position =Vector2(193,546)
		#Global.last=0
	

func playMusic():
	if Global.song==true:
		$Music/Musica.play()
	elif Global.song==false:
		$Music/Musica.stop()
