extends OptionButton


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_item_selected(index: int) -> void:
	if get_item_id(0)==get_selected_id():
		Global.escolha=0
	elif get_item_id(1)==get_selected_id():
		Global.escolha=1
	
	pass # Replace with function body.
func checkescolha():
	if Global.day==0:
		pass
	elif Global.day==1:
		pass
	elif Global.day==2:
		pass
	elif Global.day==3:
		pass
