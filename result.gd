extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.load_game()
	$Usuario.text = "Usuario actual: "+str(Global.useractual)
	#$Rango.text = "Rango actual de usuario: "+str(Global.rangouseractual)
	$Score.text = "Score obtenido: "+str(Global.scoreActual)
	$ScoreHistorico.text = "Score historico: "+str(Global.localizar_ScoreUser(Global.useractual))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_mostrar_usuarios_pressed():
	print("----------USUARIOS----------")
	for user in Global.game_data["personas"]:
		print("Usuario: ",user["Nombre"]," - Score: ",user["Score"])

	get_tree().change_scene_to_file("res://registros_usuarios.tscn")
