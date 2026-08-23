extends Node
var score = 0
var level = 1
@export var score_label: Label
@export var level_debug: Timer
@export var mid_1: TileMapLayer
@export var back_1: TileMapLayer
@export var mid_2: TileMapLayer
@export var back_2: TileMapLayer





func add_point():
	score += 1
	print(score)
	score_label.text = "Congrats, you won! You collected " + str(score) + "out of 47 coins!"
	if score == 47:
		score_label.text = "Congrats, you won, and you've collected all 47 coins!"
	
