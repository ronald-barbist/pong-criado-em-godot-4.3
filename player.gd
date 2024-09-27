extends CharacterBody2D

signal player_moved

@onready var screen_size = get_viewport_rect().size

var speed = 500.0


func _process(delta):
	var direction = Vector2.ZERO
	
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_up"):
		direction.y -= 1
	
	if direction.length() > 0:
		position += direction * speed * delta
		global_position = global_position.clamp(Vector2.ZERO, screen_size)
		player_moved.emit()
