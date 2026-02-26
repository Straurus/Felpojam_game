extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#print(c)
	if Global.z==true and Input.is_action_pressed("ui_accept") and (Global.y==false or Global.x==false):
		Tp(bodyPlayer3)
	#printer()
	pass
	

@export var body: CharacterBody2D
@export var alvo_posicao: Marker2D 
var bodyPlayer3
func _on_body_entered3(body):
	await get_tree().create_timer(0.1).timeout
	Global.z=true
	bodyPlayer3=body
	pass
	await get_tree().create_timer(3.0).timeout
	Global.z=false
	Global.lastPessoa=0


func  Tp(body):
	Global.last=1
	if Global.day==0:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_5a.tscn")
	elif Global.day==1:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_6a.tscn")
	elif Global.day==2:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_7b.tscn")
	elif Global.day==3:
		get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_8.tscn")
	Global.z=false
	pass


func _on_body_exited3(body: Node2D) -> void:
	
	pass # Replace with function body.
