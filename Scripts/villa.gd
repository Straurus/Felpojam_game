extends Node2D
@export var body:CharacterBody2D
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	check_posicao(body)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
#var last:int


func check_posicao(body):
	if Global.last==0:
		#casa
		body.global_position =Vector2(220,456)
		#Global.last=0
	if Global.last==1:
		#estacao
		body.global_position =Vector2(1612,456)
		#Global.last=1
	if Global.last==2:
		#lojas
		body.global_position =Vector2(1307,456)
		#Global.last=2
