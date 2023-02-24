extends Control

onready var scoreLabel := $Score

var score: int = 0

func _ready():
	Signals.connect("on_score_increment", self, "_on_score_increment")
	
func _on_score_increment(amount: int):
	score += amount
	scoreLabel.text = str(score)
	
	
