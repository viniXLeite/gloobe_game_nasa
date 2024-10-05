extends Node2D

class MinhaClasse:
	# Propriedades
	var atributo1: int = 0
	var atributo2: String = "Exemplo"

	# Construtor opcional (chamado _init)
	func _init(valor1: int, valor2: String) -> void:
		atributo1 = valor1
		atributo2 = valor2
		Dialogic.start("Gerente")

	# Métodos
	func meu_metodo() -> void:
		print("Atributo 1: ", atributo1)
		print("Atributo 2: ", atributo2)

	# Método de exemplo com retorno
	func soma(a: int, b: int) -> int:
		return a + b

func _ready() -> void:
	# Cria uma instância da classe MinhaClasse
	var instancia = MinhaClasse.new(10, "Exemplo")
	
	# Chama os métodos da classe
	instancia.meu_metodo()  # Imprime os atributos no console
	var resultado = instancia.soma(5, 3)
	
	# Mostra o resultado da soma no console
	print("Resultado da soma: ", resultado)
