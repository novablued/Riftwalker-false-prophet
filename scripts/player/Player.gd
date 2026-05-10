extends CharacterBody3D

@export var move_speed := 5.0
@export var gravity := 9.8
@export var attack_range := 2.5
@export var attack_damage := 10

var mouse_sensitivity := 0.003

func _ready():

add_to_group("player")

Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _physics_process(delta):

handle_movement(delta)

if Input.is_action_just_pressed("attack"):
attack()


func handle_movement(delta):

var input_dir = Vector3.ZERO

if Input.is_action_pressed("move_forward"):
input_dir.z -= 1

if Input.is_action_pressed("move_backward"):
input_dir.z += 1

if Input.is_action_pressed("move_left"):
input_dir.x -= 1

if Input.is_action_pressed("move_right"):
input_dir.x += 1

input_dir = input_dir.normalized()

velocity.x = input_dir.x * move_speed
velocity.z = input_dir.z * move_speed

if not is_on_floor():
velocity.y -= gravity * delta

move_and_slide()


func attack():

print("Nova attacks.")

var enemies = get_tree().get_nodes_in_group("enemy")

for enemy in enemies:

if enemy.global_position.distance_to(global_position) <= attack_range:

enemy.take_damage(attack_damage)

print("Enemy hit.")
