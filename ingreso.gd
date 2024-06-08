extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.load_game()
	$errorNombre.visible = false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ingresar_pressed():
	var preNombre = $Nombre.get_text()
	#var nombre = $Nombre.get_text()
	var nombre = preNombre.to_upper()
	#var rango = int($Rango.get_text())
	#Global.rangouseractual = rango
	if nombre != "":
		Global.useractual = nombre
		if not Global.exist_user(nombre):
			Global.agregar_user(nombre,Global.score)
			print("Usuario registrado")
		else:
			print("Usuario cargado")
		Global.save_game()
		get_tree().change_scene_to_file("res://game.tscn")
	else:
		print("Complete campo nombre")
		$errorNombre.visible = true
