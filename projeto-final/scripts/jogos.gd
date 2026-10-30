extends Sprite2D

func _on_voltar_pressed():
	get_tree().change_scene_to_file("res://menu_inicial.tscn");
	
	


func _on_livrodereceitas_pressed():
	get_tree().change_scene_to_file("res://livro de receitas.tscn");
	


func _on_esteira_pressed():
	get_tree().change_scene_to_file("res://esteira.tscn")
