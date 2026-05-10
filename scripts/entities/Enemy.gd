extends CharacterBody3D

@export var health := 25
@export var move_speed := 3.0

var player = null

func _ready():

add_to_group("enemy")

player = get_tree().get_first_node_in_group("player")


func _physics_process(delta):

if player == null:
return

var direction = (player.global_position - global_position).normalized()

velocity = direction * move_speed

move_and_slide()


func take_damage(amount):

health -= amount

print("Enemy damaged: ", health)

if health <= 0:
die()


func die():

print("Enemy defeated.")

LegionRite.summon_revenant(global_position)

queue_free()
