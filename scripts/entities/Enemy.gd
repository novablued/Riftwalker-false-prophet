extends CharacterBody3D

@export var move_speed := 3.0
@export var max_health := 50

var current_health := 50
var target = null

func _ready():

    current_health = max_health

    func _physics_process(delta):

        if target == null:
                return

                    var direction = (
                                target.global_transform.origin
                                        - global_transform.origin
                    ).normalized()

                        velocity.x = direction.x * move_speed
                            velocity.z = direction.z * move_speed

                                move_and_slide()

                                func take_damage(amount):

                                    current_health -= amount

                                        print("Enemy damaged:", amount)

                                            if current_health <= 0:
                                                    die()

                                                    func die():

                                                        print("Enemy defeated.")

                                                            var battlefield_manager = get_node_or_null(
                                                                        "/root/BattlefieldManager"
                                                            )

                                                                if battlefield_manager:
                                                                        battlefield_manager.register_enemy_defeat()

                                                                            queue_free()
                                                            )
                    )














             



                         















                                



                                                






                                                                    







