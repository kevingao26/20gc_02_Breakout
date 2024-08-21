extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
    pass

func _on_play_pressed():
    pass # Replace with function body.


func _on_quit_pressed():
    get_tree().quit()

func start_game(use_ai):
    var pong_scene = load("res://game.tscn").instantiate()
    get_tree().root.add_child(pong_scene)
    queue_free()


func _on_controls_pressed():
    var controls_screen = load("res://controls.tscn").instantiate()
    get_tree().root.add_child(controls_screen)
    self.visible = false

