extends RichTextLabel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func randonPessoas():
	if Global.pessoas>0:
		var cabelo=Randomizer.lista_palavras_cabeca.pick_random()
		text = "cabelo"
