extends Node2D
@export var body:CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playMusic()
	check_posicao(body)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	checkMusic()
	checkCamera()
	pass
	pass
#var last:int


func check_posicao(body):
	if Global.last==0:
		#casa
		body.global_position =Vector2(484,539)
		#Global.last=0
	if Global.last==1:
		#estacao
		body.global_position =Vector2(4382,686)
		#Global.last=1
	if Global.last==2:
		#lojas
		body.global_position =Vector2(3661,642)
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
