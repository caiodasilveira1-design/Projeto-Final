extends Control


var receitas = {
	"Salada": {
		"nome": "Salada colorida",
		"tempo": "Tempo: 20 minutos",
		"ingredientes": ["Alface", "Tomate", "Cenoura", "Milho", "Pepino"]
	},

	"Sopa": {
		"nome": "Sopa de legumes",
		"tempo": "Tempo: 30 minutos",
		"ingredientes": ["Batata", "Cenoura", "Chuchu", "Abóbora", "Água", "Sal"]
	},

	"Omelete": {
		"nome": "Omelete de espinafre",
		"tempo": "Tempo: 15 minutos",
		"ingredientes": ["Ovos", "Espinafre", "Queijo", "Sal", "Azeite"]
	},

	"Panqueca": {
		"nome": "Panqueca de aveia",
		"tempo": "Tempo: 10 minutos",
		"ingredientes": ["Aveia", "Ovo", "Banana", "Leite", "Canela"]
	},
	
	"Bolo": {
		"nome": "Bolo de cenoura",
		"tempo": "Tempo: 40 minutos",
		"ingredientes": [
			"Cenoura",
			"Ovos",
			"Farinha de trigo",
			"Açúcar",
            "Óleo"
		]
	}

}

func _ready():
	$ListaReceitas/Salada.pressed.connect(func(): mostrar_receita("Salada"))
	$ListaReceitas/Sopa.pressed.connect(func(): mostrar_receita("Sopa"))
	$ListaReceitas/Omelete.pressed.connect(func(): mostrar_receita("Omelete"))
	$ListaReceitas/Panqueca.pressed.connect(func(): mostrar_receita("Panqueca"))


func mostrar_receita(id_receita: String):
	var receita = receitas[id_receita]

	$Detalhes/NomeReceita.text = receita["nome"]
	$Detalhes/Tempo.text = receita["tempo"]

	var texto_ingredientes = "Ingredientes:\n"

	for ingrediente in receita["ingredientes"]:
		texto_ingredientes += ingrediente + "\n"

	$Detalhes/Ingredientes.text = texto_ingredientes


	
func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://jogos.tscn")
