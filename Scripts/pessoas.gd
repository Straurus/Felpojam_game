extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var c=false
func _process(delta: float) -> void:
	#print(c)
	if c==true and Input.is_action_pressed("ui_accept"):
		Tp(bodyPlayer)
	#printer()
	pass
	

@export var body: CharacterBody2D
@export var alvo_posicao: Marker2D 
var bodyPlayer
func _on_body_entered(body):
	c=true
	await get_tree().create_timer(0.1).timeout
	if Global.lastPessoa==2:
		Global.z=true
	elif Global.lastPessoa==1:
		Global.y=true
	elif Global.lastPessoa==0:
		Global.x=true
	bodyPlayer=body
	pass
	await get_tree().create_timer(3.0).timeout
	if Global.lastPessoa==2:
		Global.z=false
		
	elif Global.lastPessoa==1:
		Global.y=false
		
	elif Global.lastPessoa==0:
		Global.x=false
		
	


func  Tp(body):
	if Global.lastPessoa==0:
		Global.last=1
		if Global.day==0:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_1a.tscn")
		elif Global.day==1:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_2b.tscn")
		elif Global.day==2:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_3a.tscn")
		elif Global.day==3:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_4b.tscn")
		Global.x=false
		
		pass
	elif Global.lastPessoa==1:
		Global.last=1
		if Global.day==0:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_2a.tscn")
		elif Global.day==1:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_5b.tscn")
		elif Global.day==2:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_6b.tscn")
		elif Global.day==3:
			get_tree().change_scene_to_file("res://Cenas/pessoas/cartao_embarque_7a.tscn")
		Global.y=false
		
		pass
	elif Global.lastPessoa==2:
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
	pass


func _on_body_exited(body: Node2D) -> void:
	c=false
	pass # Replace with function body.
