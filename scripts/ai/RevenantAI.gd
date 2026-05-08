extends CharacterBody3D

@export var move_speed := 3.0
@export var target_path : NodePath

var target = null

func _ready():
	if target_path != NodePath():
    		target = get_node(target_path)

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
                            )