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
		#cama
		body.global_position =Vector2(710,323)
		#Global.last=0
	if Global.last==1:
		#porta frente
		body.global_position =Vector2(1012,530)
		#Global.last=1
	if Global.last==2:
		#porta tras
		body.global_position =Vector2(149,530)
		#Global.last=2

func playMusic():
	if Global.song==true:
		$Music/Musica.play()
	elif Global.song==false:
		$Music/Musica.stop()


func _on_cama_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
