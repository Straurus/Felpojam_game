extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	set
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
var last:int
func set_posision(body):
	last=body.global_position

func check_posicao(body):
	if last==0:
		body.global_position =Vector2(220,456)
	if last==1:
		body.global_position =Vector2(1612,456)
	if last==2:
		body.global_position =Vector2(1307,456)
