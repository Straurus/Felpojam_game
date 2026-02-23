extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var c=false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(c)
	if c==true and Input.is_action_pressed("ui_accept"):
		Tp(bodyPlayer)
	print(c)
	pass

@export var alvo_posicao: Marker2D 
var bodyPlayer
func _on_body_entered(body: Node2D):
	await get_tree().create_timer(0.1).timeout
	c=true
	bodyPlayer=body
	pass
	await get_tree().create_timer(2.0).timeout
	c=false

func  Tp(body):
	Global.last=0
	get_tree().change_scene_to_file("res://Cenas/villa.tscn")
	c=false
	pass


func _on_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
