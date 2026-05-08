extends Node

@export var enemy_scene: PackedScene

var enemies_spawned := 0
var max_enemies := 5

func _ready():
	randomize()

    	spawn_wave()

        func spawn_wave():
        	for i in range(max_enemies):
            		spawn_enemy()

                    func spawn_enemy():
                    	if enemy_scene == null:
                        		print("No enemy scene assigned")
                                		return

                                        	var enemy = enemy_scene.instantiate()

                                            	var x = randf_range(-8.0, 8.0)
                                                	var z = randf_range(-8.0, 8.0)

                                                    	enemy.position = Vector3(x, 1, z)

                                                        	get_tree().current_scene.add_child(enemy)

                                                            	enemies_spawned += 1

                                                                	print("Enemy spawned:", enemies_spawned)

                                                                    func register_kill():
                                                                    	enemies_spawned -= 1

                                                                        	print("Enemy defeated")

                                                                            	if enemies_spawned <= 0:
                                                                                		print("Wave cleared")
                                                                                        		max_enemies += 2
                                                                                                		spawn_wave()

















