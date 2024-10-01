extends FSM_State

var input_direction := Vector2.ZERO


func _process(delta: float) -> void:
	target.get_node("Label").text = "Run"
	
	input_direction.x = Input.get_axis("ui_left", "ui_right")
	input_direction.y = Input.get_axis("ui_up", "ui_down")
	
	target.direction = input_direction
	
	if input_direction == Vector2.ZERO:
		state_machine.transition_with_name("Idle")
	
