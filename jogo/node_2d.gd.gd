extends Node2D

class_name MinhaClasse

# Propriedades
var atributo1: int
var atributo2: String

# Construtor (_init substituído por _ready ou diretamente pelo init padrão)
func _init(valor1: int, valor2: String) -> void:
	atributo1 = valor1
	atributo2 = valor2

# Métodos da classe
func meu_metodo() -> void:
	print("Atributo 1: ", atributo1)
	print("Atributo 2: ", atributo2)

# Método de exemplo com retorno
func soma(a: int, b: int) -> int:
	return a + b

func _ready() -> void:
	# Cria uma instância da classe MinhaClasse com os argumentos esperados
	var instancia = MinhaClasse.new(10, "Exemplo")
	
	# Chama os métodos da instância
	instancia.meu_metodo()  # Imprime os atributos no console
	
	var resultado = instancia.soma(5, 3)
	print("Resultado da soma: ", resultado)
