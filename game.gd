extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.load_game()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ready_pressed():
	for user in Global.game_data["personas"]:
		if user["Nombre"] == Global.useractual:
			var tempScore = user["Score"]
			tempScore+=Global.scoreActual
			user["Score"] = tempScore
			print("SCORE: ",user["Score"])
			Global.save_game()
	get_tree().change_scene_to_file("res://result.tscn")


func _on_press_pressed():
	Global.scoreActual+=100
	$score.text = "SCORE: "+str(Global.scoreActual)
	
