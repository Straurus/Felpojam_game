extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	

func _on_body_entered(body: Node2D):
	if body.name == "Player" and Input.is_action_pressed("ui_accept"):
		#body.global_position = Vector2(525, 327)
		pass
