extends Area2D

signal restart_match


func _on_body_entered(body):
	if body is RigidBody2D:
		%HUD.update_adversary_score()
		get_tree().paused = true
		await get_tree().create_timer(1.0).timeout
		restart_match.emit()
