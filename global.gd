extends Node
var useractual 
var rangouseractual 
var scoreActual = 0
var score  = 0
var save_path = "user://save_game.dat"
var game_data:Dictionary ={
	"personas" : []
}

func save_game():
	var save_file = FileAccess.open(save_path,FileAccess.WRITE)
	save_file.store_var(game_data)
	save_file = null

func load_game():
	if FileAccess.file_exists(save_path):
		var save_file = FileAccess.open(save_path,FileAccess.READ)
		game_data = save_file.get_var()
		save_file = null
	else:
		print("No se encuentra el archivo de ",save_path)
		
func agregar_user(nomb, score):
	var nueva_persona = {
		"Nombre": nomb,
		"Score": score
	}
	game_data["personas"].append(nueva_persona)
	print("Guardado exitoso")

#func exist_user(nomb):
	#for user in game_data["personas"]:
		#if user["Nombre"] == nomb:
			#return false
func exist_user(nomb: String) -> bool:
	for user in game_data["personas"]:
		if user["Nombre"] == nomb:
			return true
	return false

func localizar_user(nomb: String):
	for user in game_data["personas"]:
		if user["Nombre"] == nomb:
			return user
	return {}

func localizar_ScoreUser(nomb: String):
	for user in game_data["personas"]:
		if user["Nombre"] == nomb:
			return user["Score"]
	return -1
	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	
	#var game_data : Dictionary = {
		#"personas":[{"Nombre":"Juan","Score":100},{"Nombre":"Pedro","Score":222}]
	#}
