extends StaticBody2D

func set_color(color: Color):
    $Sprite2D.modulate = color

func hit():
    # brick is gone when hit
    queue_free()
