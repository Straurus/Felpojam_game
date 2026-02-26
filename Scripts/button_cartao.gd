extends Button


# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed():
	#Global.pessoas -= 1
	#CartaoEmbarque.randonPessoas()
	Global.prinder()
	Global.last=1
	if Global.lastPessoa==0:
		Global.lastPessoa=1
	elif Global.lastPessoa==1:
		Global.lastPessoa=2
	elif Global.lastPessoa==2:
		Global.lastPessoa=3
	get_tree().change_scene_to_file("res://Cenas/trem.tscn")
	pass
