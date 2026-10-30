extends Sprite2D

func _on_button_pressed():
	get_tree().change_scene_to_file("res://jogos.tscn")

func _on_configuracoes_pressed():
	get_tree().change_scene_to_file("res://configurações.tscn")


func _on_progresso_pressed():
	get_tree().change_scene_to_file("res://receitas.tscn")
