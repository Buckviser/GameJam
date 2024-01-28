class_name Constants


# --- Enums ---


# --- Constants ---
const JokesTypes := {
	"TOC_TOC": "toc_toc", "PIADINHAS": "piadinhas", "NOME": "nome", 
	"ANIMAL": "animal", "OBJETO": "objeto"}

const TEST_PLAYER_DATA := {
	"name": "player", 
	"sprite": "res://sprites/Player.png",
	"laugh_limit": 25,
	"resistences": {JokesTypes.TOC_TOC: 1, JokesTypes.PIADINHAS: 1, 
	JokesTypes.NOME: 1, JokesTypes.ANIMAL: 1, JokesTypes.OBJETO: 1},
	"draw_amount": 3, 
	"max_locks": 1, 
	"deck": []}
