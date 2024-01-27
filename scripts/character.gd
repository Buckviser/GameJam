extends Node2D

class_name Character

# --- Signals ---
# --- Enums ---
# --- Constants ---
# --- Exported Variables ---
# --- Public Variables ---


# --- Private Variables ---
var _player_name: String = "Matheus"
var _player_resistences := {}
var _draw_amount := 3
var _max_locks := 1
var _locks_remaining: int
var _player_deck: Array


# --- Onready Variables ---


# --- Engine Callbacks ---
func _ready() -> void:
	pass


# --- Public Functions ---
func get_player_resistences() -> Dictionary:
	return _player_resistences


func new_battle_preparations() -> void:
	_locks_remaining = _max_locks


func load_player_data(p_data: Dictionary) -> void:
	_player_name = p_data["name"]
	_player_resistences = p_data["resistences"]
	_draw_amount = p_data["draw_amount"]
	_max_locks = p_data["max_locks"]
	_player_deck = p_data["deck"]
	
	_locks_remaining = _max_locks
	$Label.text = _player_name


# --- Private Functions ---
# - Common Use Functions -
# - Setget Functions -
# - Signal Functions -

