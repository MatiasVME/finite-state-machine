extends FSM_State


func _process(delta: float) -> void:
	target.get_node("Label").text = "Dash"
