extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playMusic()
	#Global.lastPessoa=0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	checkPessoa()
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
