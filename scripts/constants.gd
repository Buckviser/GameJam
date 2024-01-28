class_name Constants


# --- Enums ---


# --- Constants ---
const JokesTypes := {
	"TOC_TOC": "toc_toc", "TROCADILHO": "trocadilho", "PIADINHAS": "piadinhas"}

const TEST_PLAYER_DATA := {
	"name": "player", 
	"sprite": "res://sprites/Player.png",
	"max_health": 100,
	"resistences": {JokesTypes.TOC_TOC: 1, JokesTypes.TROCADILHO: 1, 
	JokesTypes.PIADINHAS: 1},
	"draw_amount": 3, 
	"max_locks": 1, 
	"deck": []}
