extends Control


func _ready() -> void:
	#playMusic()
	#Global.pessoas=randf_range(1,5)
	#Cabelo.randonPessoas()
	#Global.pessoas=5
	pass


func _process(delta: float) -> void:
	pass

func randonPessoas():
	if Global.pessoas>0:
		var cabelo=Randomizer.lista_palavras_cabeca.pick_random()
		#$cabelo.text = cabelo
		print("cabelo:",cabelo)
		var cabeloI=Randomizer.lista_palavras_cabeca.pick_random()
		#$cabelo_identidade.text=cabeloI
		print("cabelo identidade:",cabeloI)
		var rostoI=Randomizer.lista_palavras_rosto.pick_random()
		#$rosto_identidade.text=rostoI
		print("rosto identideda:",rostoI)
		var rosto=Randomizer.lista_palavras_rosto.pick_random()
		#$rosto.text=rosto
		print("rosto:",rosto)
		var roupa=Randomizer.lista_palavras_roupa.pick_random()
		#$roupa.text=roupa
		print("roupa:",roupa)

	pass

func playMusic():
	if Global.song==true:
		$Music/Musica.play()
	elif Global.song==false:
		$Music/Musica.stop()
