extends Node2D
@onready var ray_cast_right: RayCast2D = $"RayCast right"
@onready var ray_cast_rleft: RayCast2D = $"RayCast rleft"
var direction = 1
var movement_speed = 20

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_right.is_colliding():
		direction = -1
	if ray_cast_rleft.is_colliding():
		direction = 1
	position.x += movement_speed * delta * direction
