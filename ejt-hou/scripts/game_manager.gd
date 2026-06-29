extends Node
var score = 0
var level = 1
@export var score_label: Label


func add_point():
	score += 1
	print(score)
	score_label.text = "Wow! You collected " + str(score) + " coins!"
	
