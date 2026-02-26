extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(c)
	if Global.y==true and Input.is_action_pressed("ui_accept") and (Global.z==false or Global.x==false):
		Tp(bodyPlayer2)
	#printer()
	pass
	

@export var body: CharacterBody2D
@export var alvo_posicao: Marker2D 
var bodyPlayer2
func _on_body_entered2(body):
	await get_tree().create_timer(0.1).timeout
	Global.y=true
	bodyPlayer2=body
	pass
	await get_tree().create_timer(3.0).timeout
	Global.y=false
	Global.lastPessoa=2


func  Tp(body):
	Global.last=1
	if Global.day==0:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_2a.tscn")
	elif Global.day==1:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_4a.tscn")
	elif Global.day==2:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_6b.tscn")
	elif Global.day==3:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_7a.tscn")
	Global.y=false
	pass


func _on_body_exited2(body: Node2D) -> void:

	pass # Replace with function body.
