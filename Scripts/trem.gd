extends Node2D

@export var body:CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playMusic()
	check_posicao(body)
	#Global.lastPessoa=0
	pass # Replace with function body.

func check_posicao(body):
	if Global.last==0:
		#entrada
		body.global_position =Vector2(1336,528)
		#Global.last=0
	if Global.last==1:
		#cadeiras
		body.global_position =Vector2(2128,528)
		#Global.last=1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	checkPessoa()
	checkMusic()
	checkCamera()
	pass

func playMusic():
	if Global.song==true:
		$Music/Musica.play()
	elif Global.song==false:
		$Music/Musica.stop()

func checkPessoa():
	if Global.lastPessoa==0:
		$pessoa1/CollisionShapeP1.set_deferred("disabled", false)
		$pessoa2/CollisionShapeP2.set_deferred("disabled", true)
		$pessoa3/CollisionShapeP3.set_deferred("disabled", true)
	elif Global.lastPessoa==1:
		$pessoa1/CollisionShapeP1.set_deferred("disabled", true)
		$pessoa2/CollisionShapeP2.set_deferred("disabled", false)
		$pessoa3/CollisionShapeP3.set_deferred("disabled", true)
	elif Global.lastPessoa==2:
		$pessoa1/CollisionShapeP1.set_deferred("disabled", true)
		$pessoa2/CollisionShapeP2.set_deferred("disabled", true)
		$pessoa3/CollisionShapeP3.set_deferred("disabled", false)
	elif Global.lastPessoa==3:
		Global.sleep=true

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
