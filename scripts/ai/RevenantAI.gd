extends CharacterBody3D

@export var move_speed := 4.0

var target = null

func _ready():

add_to_group("revenant")

find_target()


func _physics_process(delta):

if target == null:
find_target()
return

var direction = (target.global_position - global_position).normalized()

velocity = direction * move_speed

move_and_slide()


func find_target():

var enemies = get_tree().get_nodes_in_group("enemy")

if enemies.size() > 0:
target = enemies[0]
