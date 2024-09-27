extends CharacterBody2D

var speed = 500.0


func _physics_process(delta):
	position.y = move_toward(position.y, $/root/Game/BallStartingPoint/Ball.position.y, speed * delta)
