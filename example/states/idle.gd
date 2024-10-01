extends FSM_State


func _process(delta: float) -> void:
	target.get_node("Label").text = "Idle"


func _input(event: InputEvent) -> void:
	if event.is_action_type():
		state_machine.transition_with_name("Run")
