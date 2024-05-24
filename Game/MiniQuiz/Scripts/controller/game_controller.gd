extends Node

@export var quiz: QuizTheme
@export var color_right: Color
@export var color_wrong: Color

var buttons: Array[Button]
var index: int
var correct: int

var current_quiz: QuizQuestion:
	get: return quiz.theme[index]

@onready var question_text = $Content/QuestionInfo/QuestionText


func _ready() -> void:
	correct = 0
	for button in $Content/Answers.get_children():
		buttons.append(button)
	
	load_quiz()


func load_quiz() -> void:
	if index >= quiz.theme.size():
		_game_over()
		return
	
	question_text.text = current_quiz.question_info
	
	var options = current_quiz.options
	for i in buttons.size():
		buttons[i].text = options[i]
		buttons[i].pressed.connect(_buttons_answer.bind(buttons[i]))



func _buttons_answer(button)->void:
	if current_quiz.correct == button.text:
		button.modulate = color_right
		correct+=1
		$AudioCorrect.play()
		
	else:
		button.modulate = color_wrong
		$AudioWrong.play()
	_next_question()



func _next_question () -> void:
	for bt in buttons:
		bt.pressed.disconnect(_buttons_answer)
		
	await get_tree().create_timer(1).timeout
	for bt in buttons:
		bt.modulate = Color.WHITE_SMOKE
	index +=1
	
	load_quiz()
	
	
func _game_over () -> void:
	$Content/GameOver.show()
	$Content/GameOver/Score.text = str(correct, "/", quiz.theme.size())

func _on_button_pressed():
	get_tree().reload_current_scene()


func StartScreen():
	$Content/StartScreen.hide()

func _on_start_pressed():
	load_quiz()
	StartScreen()
