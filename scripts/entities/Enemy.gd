extends CharacterBody3D

@export var max_health := 50
var current_health := max_health
var is_dead := false

func take_damage(amount):
if is_dead:
return

current_health -= amount

if current_health <= 0:
die()

func die():
if is_dead:
return

is_dead = true

print("Enemy defeated.")

# Future manual necromancy system hook
# Corpse remains available for resurrection

queue_free()
