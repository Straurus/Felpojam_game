extends Node2D
@export var body:CharacterBody2D

func _ready() -> void:
	playMusic()
	check_posicao(body)
	pass

func _process(delta: float) -> void:
	checkMusic()
	checkCamera()
	
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

func checkCamera():
	if Global.camera==true:
		$Player/Camera2D.enabled=true
	elif Global.camera==false:
		$Player/Camera2D.enabled=false
func checkMusic():
	if Input.is_action_just_released("ui_close_dialog"):
		await get_tree().create_timer(1.0).timeout
		playMusic()
	pass

func _on_cama_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
