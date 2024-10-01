extends CharacterBody2D


const SPEED = 4000.0

var direction := Vector2.ZERO


func _process(delta: float) -> void:
	movement(delta)
	rotating(delta)


func movement(delta) -> void:
	velocity = direction * SPEED * delta
	print(global_position)
	move_and_slide()


func rotating(delta) -> void:
	if direction.x > 0:
		$Sprite.rotation += delta * SPEED / 1000
	elif direction.x < 0:
		$Sprite.rotation -= delta * SPEED / 1000
	
	if direction.y > 0:
		$Sprite.rotation -= delta * SPEED / 1000
	elif direction.y < 0:
		$Sprite.rotation += delta * SPEED / 1000
	
	if direction == Vector2.ZERO:
		$Sprite.rotation = 0
		
