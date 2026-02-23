extends Node

var lista_palavras_cabeca = ["cabelo_branco", "cabelo_preto", "cabelo_castanho", "cabelo_ruivo", "cabelo_colorido"]
var lista_palavras_rosto = ["com_olhos_castanhos", "com_olhos_azuis", "com_olhos_vermelho", "sem_um_olhos", "com_heterocromia"]
var lista_palavras_roupa = ["preta", "branca", "Laranja", "bordo", "rosa_Felps"]

func _ready():
	pass


func randomize(palavra):
	var palavra_aleatoria=palavra
	print(palavra_aleatoria)



func obter_palavra_aleatoria():
	if lista_palavras_cabeca.size() > 0:
		var indice = randi_range(0, lista_palavras_cabeca.size() - 1)
		return lista_palavras_cabeca[indice]
	return ""

func obter_palavra_aleatoria_rosto():
	if lista_palavras_rosto.size() > 0:
		var indice = randi_range(0, lista_palavras_rosto.size() - 1)
		return lista_palavras_rosto[indice]
	return ""
	
func obter_palavra_aleatoria_roupa():
	if lista_palavras_roupa.size() > 0:
		var indice = randi_range(0, lista_palavras_roupa.size() - 1)
		return lista_palavras_roupa[indice]
	return ""
	

func _process(delta: float) -> void:
	pass
