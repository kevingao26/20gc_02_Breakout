extends CharacterBody2D

func _physics_process(delta):
    var target_x = get_global_mouse_position().x
    target_x = clamp(target_x, 0, get_viewport_rect().size.x)
    
    velocity.x = (target_x - global_position.x) / delta
    move_and_slide()

func _ready():
    position.y = get_viewport_rect().size.y - 50
