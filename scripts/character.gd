extends Node2D

class_name Character

# --- Signals ---
signal laugh_gauge_changed(laugh_gauge)
signal action_points_changed(action_points)


# --- Enums ---
# --- Constants ---
# --- Exported Variables ---


# --- Public Variables ---
var is_player_character := false
var player_name: String = "Matheus"
var current_laugh := 0
var current_action_points := 3
var laugh_limit := 100
var resistences := {}
var draw_amount := 3
var max_locks := 0
var locks_remaining := 0
var deck: Array


# --- Private Variables ---
# --- Onready Variables ---


# --- Engine Callbacks ---
func _ready() -> void:
	pass


# --- Public Functions ---
func new_battle_preparations() -> void:
	locks_remaining = max_locks


func new_turn() -> void:
	current_action_points = 3
	emit_signal("action_points_changed", current_action_points)


func request_card_activation(p_card: Node2D) -> bool:
	if p_card.card_cost > current_action_points:
		return false
	
	current_action_points -= p_card.card_cost
	emit_signal("action_points_changed", current_action_points)
	return true


func load_player_data(p_data: Dictionary) -> void:
	player_name = p_data["name"]
	$Sprite2D.texture = load(p_data["sprite"])
	laugh_limit = p_data["laugh_limit"]
	resistences = p_data["resistences"]
	draw_amount = p_data["draw_amount"]
	max_locks = p_data["max_locks"]
	deck = p_data["deck"]
	
	locks_remaining = max_locks
	current_laugh = 0
	$Label.text = player_name

func play_animation(p_anim_name: String) -> void:
	$AnimationPlayer.play(p_anim_name)


func set_character_type(p_type: String) -> void:
	if p_type == "player":
		$Sprite2D.z_index = 1
		is_player_character = true
	
	else:
		$Sprite2D.z_index = -1


func receive_damage(p_card: Node2D) -> bool:
	current_laugh += max(-5, p_card.card_power - resistences[p_card.card_type])
	
	if current_laugh < laugh_limit:
		$AnimationPlayer.play("holding")
		await $AnimationPlayer.animation_finished
		$AnimationPlayer.play("idle")
	
	else:
		$AnimationPlayer.play("laugh")
	
	emit_signal("laugh_gauge_changed", current_laugh)
	return current_laugh >= laugh_limit


# --- Private Functions ---
# - Common Use Functions -
# - Setget Functions -
# - Signal Functions -

