extends CharacterBody3D

@export var is_permanent := false
@export var revenant_name := "Revenant"

func _ready():
if is_permanent:
print(revenant_name + " is a permanent revenant.")
else:
print(revenant_name + " is a temporary battlefield revenant.")

func end_battle_cleanup():
if !is_permanent:
queue_free()
