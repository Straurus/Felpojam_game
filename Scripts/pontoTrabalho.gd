extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
var c=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if c==true and Input.is_action_pressed("ui_accept"):
		Tp(bodyPlayer)
	print(c," loja")
	pass

@export var alvo_posicao: Marker2D 
var bodyPlayer
func _on_body_entered(body: Node2D):
	await get_tree().create_timer(0.1).timeout
	c=true
	bodyPlayer=body
	pass
	await get_tree().create_timer(2.0).timeout
	#stairDn=false

func  Tp(body):
	Global.last=2
	get_tree().change_scene_to_file("res://Cenas/cartao_embarque.tscn")
	c=false
	Global.pessoas=randf_range(1,5)
	pass


func _on_body_exited(body: Node2D) -> void:
	c=false
	pass # Replace with function body.
