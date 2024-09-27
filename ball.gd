extends RigidBody2D

var ball_speed = 500.0


func _physics_process(delta):
	var collision = move_and_collide(linear_velocity * delta)
	if collision:
		var bounce = collision.get_remainder().bounce(collision.get_normal())
		linear_velocity = linear_velocity.bounce(collision.get_normal())


func move_ball():
	if %Player.position.y > 0:
		linear_velocity += Vector2.RIGHT.rotated(randf_range(PI / 6, PI / 3)) * ball_speed
		%Player.set_block_signals(true)
	if %Player.position.y < 0:
		linear_velocity += Vector2.RIGHT.rotated(randf_range(-PI / 6, -PI / 3)) * ball_speed
		%Player.set_block_signals(true)
