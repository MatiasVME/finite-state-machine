@tool

extends EditorPlugin

const STATE_MACHINE_SCRIPT = preload("res://addons/fsm_furycode/state_machine.gd")
const STATE_MACHINE_TEXTURE = preload("res://addons/fsm_furycode/node_icons/statemachine.png")

const STATE_SCRIPT = preload("res://addons/fsm_furycode/state.gd")
const STATE_TEXTURE = preload("res://addons/fsm_furycode/node_icons/state.png")

# Called when the plugin is added to the editor
func _enter_tree():
	# Register custom types for StateMachine and State
	add_custom_type(
		"StateMachine",
		"Node",
		STATE_MACHINE_SCRIPT,
		STATE_MACHINE_TEXTURE
	)
	add_custom_type(
		"State",
		"Node",
		STATE_SCRIPT,
		STATE_TEXTURE
	)


# Called when the plugin is removed from the editor
func _exit_tree():
	# Unregister custom types
	remove_custom_type("StateMachine")
	remove_custom_type("State")
