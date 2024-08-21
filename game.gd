extends Node2D

var Brick = preload("res://Brick.tscn")

const BRICK_WIDTH = 64
const BRICK_HEIGHT = 32
const BRICK_MARGIN = 10
const BRICKS_PER_ROW = 8
const NUM_ROWS = 4

var colors = [Color.RED, Color.GREEN, Color.BLUE, Color.YELLOW]

func _ready():
    setup_bricks()

func setup_bricks():
    var start_x = (get_viewport_rect().size.x - (BRICKS_PER_ROW * (BRICK_WIDTH + BRICK_MARGIN) - BRICK_MARGIN)) / 2
    for row in range(NUM_ROWS):
        for col in range(BRICKS_PER_ROW):
            var brick = Brick.instantiate()
            brick.position = Vector2(
                start_x + col * (BRICK_WIDTH + BRICK_MARGIN),
                50 + row * (BRICK_HEIGHT + BRICK_MARGIN)
            )
            brick.set_color(colors[row])
            add_child(brick)
