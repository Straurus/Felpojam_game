extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var stairUp=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(stairUp," Dn")
	if stairUp==true and Input.is_action_pressed("ui_accept"):
		Tp(bodyPlayer)
	pass

@export var alvo_posicao: Marker2D 
var bodyPlayer
func _on_body_entered(body: Node2D):
	await get_tree().create_timer(0.1).timeout
	stairUp=true
	bodyPlayer=body
	await get_tree().create_timer(2.0).timeout
	#stairDn=false

func  Tp(body):
	#body.global_position = Vector2(525, 327)
	#body.global_position=alvo_posicao.global_position
	stairUp=false
	pass

func _on_body_exited(body: Node2D):
	stairUp=false
	pass
