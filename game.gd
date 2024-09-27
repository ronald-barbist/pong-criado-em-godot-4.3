extends Node2D


func restart_match():
	get_tree().paused = false
	#player, adver, ball startpostion
	%Player.global_position = $PlayerStartingPoint.global_position
	$AdversaryStartingPoint/Adversary.global_position = $AdversaryStartingPoint.global_position
	$BallStartingPoint/Ball.global_position = $BallStartingPoint.global_position
	$BallStartingPoint/Ball.linear_velocity = Vector2.ZERO
	#reativar sinal do player
	%Player.set_block_signals(false)
