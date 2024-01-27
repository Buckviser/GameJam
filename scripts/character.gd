extends Node2D

class_name Character

# --- Signals ---
# --- Enums ---
# --- Constants ---
# --- Exported Variables ---


# --- Public Variables ---
var player_name: String = "Matheus"
var resistences := {}
var draw_amount := 3
var max_locks := 1
var locks_remaining: int
var deck: Array


# --- Private Variables ---
# --- Onready Variables ---


# --- Engine Callbacks ---
func _ready() -> void:
	pass


# --- Public Functions ---
func new_battle_preparations() -> void:
	locks_remaining = max_locks


func load_player_data(p_data: Dictionary) -> void:
	player_name = p_data["name"]
	resistences = p_data["resistences"]
	draw_amount = p_data["draw_amount"]
	max_locks = p_data["max_locks"]
	deck = p_data["deck"]
	
	locks_remaining = max_locks
	$Label.text = player_name


# --- Private Functions ---
# - Common Use Functions -
# - Setget Functions -
# - Signal Functions -

