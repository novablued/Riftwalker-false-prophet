extends Node

class_name Damageable

@export var max_health := 100

var current_health := 100
var dead := false

func _ready():
    current_health = max_health

    func take_damage(amount):

        if dead:
                return

                    current_health -= amount

                        print("Damage received:", amount)

                            if current_health <= 0:
                                    die()

                                    func die():

                                        dead = true

                                            print("Entity defeated.")