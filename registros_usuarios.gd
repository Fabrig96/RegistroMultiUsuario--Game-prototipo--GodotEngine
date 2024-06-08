extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var tree = $Tree  # Asumiendo que tienes un nodo Tree llamado Tree en la escena
	tree.set_columns(2)  # Establece el número de columnas
	tree.set_column_titles_visible(true)
	tree.set_column_title(0, "Nombre")
	tree.set_column_title(1, "Score")

	var root = tree.create_item()  # Crea el ítem raíz

	for user in Global.game_data["personas"]:
		var tree_item = tree.create_item(root)
		tree_item.set_text(0, user["Nombre"])  # Columna 0: Nombre
		tree_item.set_text(1, str(user["Score"]))  # Columna 1: Puntaje


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
