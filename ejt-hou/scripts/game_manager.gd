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
	score_label.text = "Wow! You collected " + str(score) + " coins!"
	
