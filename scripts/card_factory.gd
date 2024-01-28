class_name CardFactory

# --- Signals ---
# --- Enums ---
# --- Constants ---
# --- Exported Variables ---
# --- Public Variables ---

var a = {
	"name": "Card", "text": "Test", "type": Constants.JokesTypes.PIADINHAS,
	"rarity": 1, "cost": 1, "base_force": 1
}


# --- Private Variables ---
var _trocadilho_cards := {
	1: [
		
	],
	2: [
		{"name": "Chamaram o Joãozinho de interesseiro", 
		"text": "– Mamãe, você sabia que o pessoal está por aí falando que sou interesseiro?
		– Que absurdo, meu filho! Quem está falando isso de você?
		– Me dê 10 pratas e eu te conto", 
		"type": Constants.JokesTypes.PIADINHAS, "rarity": 2, "cost": 1},
		
	],
	3: [
		{"name": "Joãozinho não fez o dever de casa", 
		"text": "– Joãozinho, por que você não fez a lição de casa dessa vez?\n– Porque eu moro em apartamento. ", 
		"type": Constants.JokesTypes.PIADINHAS, "rarity": 3, "cost": 1},
		
		{"name": "Joãozinho não fez o dever de casa", 
		"text": "A professora já muito irritada pergunta para o Joãozinho:
			– Joãozinho, por que você não fez a lição de casa dessa vez?
			– Porque eu moro em apartamento. ", 
		"type": Constants.JokesTypes.PIADINHAS, "rarity": 3, "cost": 1},
	]
}



# --- Onready Variables ---


# --- Engine Callbacks ---
func _ready() -> void:
	pass


# --- Public Functions ---
func get_card_info() -> Dictionary:
	return _trocadilho_cards[3][0]



# --- Private Functions ---
# - Common Use Functions -
# - Setget Functions -
# - Signal Functions -

