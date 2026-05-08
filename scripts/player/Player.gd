extends CharacterBody3D

const MOVE_SPEED = 5.5
const ACCELERATION = 10.0
const GRAVITY = 18.0
const MOUSE_SENS = 0.0025

@onready var camera_pivot = $CameraPivot

var mouse_rotation := Vector2.ZERO

func _ready():
    Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

    func _unhandled_input(event):
        if event is InputEventMouseMotion:
                mouse_rotation.x -= event.relative.y * MOUSE_SENS
                        mouse_rotation.y -= event.relative.x * MOUSE_SENS

                                mouse_rotation.x = clamp(mouse_rotation.x, deg_to_rad(-80), deg_to_rad(80))

                                        rotation.y = mouse_rotation.y
                                                camera_pivot.rotation.x = mouse_rotation.x

                                                func _physics_process(delta):

                                                    if not is_on_floor():
                                                            velocity.y -= GRAVITY * delta

                                                                var input_dir = Vector2.ZERO

                                                                    input_dir.x = Input.get_action_strength("move_right") - Input.get_action_strength("move_left")
                                                                        input_dir.y = Input.get_action_strength("move_backward") - Input.get_action_strength("move_forward")

                                                                            input_dir = input_dir.normalized()

                                                                                var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()

                                                                                    if direction:
                                                                                            velocity.x = move_toward(velocity.x, direction.x * MOVE_SPEED, ACCELERATION * delta)
                                                                                                    velocity.z = move_toward(velocity.z, direction.z * MOVE_SPEED, ACCELERATION * delta)
                                                                                                        else:
                                                                                                                velocity.x = move_toward(velocity.x, 0, ACCELERATION * delta)
                                                                                                                        velocity.z = move_toward(velocity.z, 0, ACCELERATION * delta)

                                                                                                                            move_and_slide()

                                                                                                                            func _input(event):

                                                                                                                                if event.is_action_pressed("attack"):
                                                                                                                                        attack()

                                                                                                                                        func attack():
                                                                                                                                            print("Nova attacks.")