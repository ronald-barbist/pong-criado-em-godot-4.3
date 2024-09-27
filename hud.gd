extends CanvasLayer

var player_score = 0
var adversary_score = 0


func update_player_score():
	player_score += 1
	$PlayerScore.text = str(player_score)


func update_adversary_score():
	adversary_score += 1
	$AdversaryScore.text = str(adversary_score)
