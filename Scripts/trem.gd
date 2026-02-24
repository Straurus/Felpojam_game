extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	playMusic()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func playMusic():
	if Global.song==true:
		$Music/LovelyTown.play()
	elif Global.song==false:
		$Music/LovelyTown.stop()
