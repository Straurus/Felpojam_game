extends Path2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	playAnim(delta)
	pass

@export var moveSpeed:float=1
@onready var anim=$Path2D/PathFollow2D/RemoteTransform2D
func playAnim(delta):
	$PathFollow2D.progress=moveSpeed*delta
