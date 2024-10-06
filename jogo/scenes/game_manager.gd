extends Node
@onready var biodiversity = $Biodiversity
@onready var temp = $Temperatura
@onready var dinheiro = $Dinheiro
@onready var polution = $Polution

func _process(delta):
	dinheiro.text = str(Protag.status["money"])
	temp.text = str(Protag.status["temperature"])
	polution.text = str(Protag.status["polution"])
	biodiversity.text = str(Protag.status["biodiversity"])
