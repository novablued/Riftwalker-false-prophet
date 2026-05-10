extends Node

const MAX_REVENANTS = 8

var revenant_scene = preload("res://scenes/summons/Revenant.tscn")
var active_revenants = []

func summon_revenant(position: Vector3):

if active_revenants.size() >= MAX_REVENANTS:
remove_oldest_revenant()

var revenant = revenant_scene.instantiate()

get_tree().current_scene.add_child(revenant)

revenant.global_position = position

active_revenants.append(revenant)

print("Revenant summoned. Active revenants: ", active_revenants.size())


func remove_oldest_revenant():

if active_revenants.size() == 0:
return

var oldest = active_revenants.pop_front()

if is_instance_valid(oldest):
oldest.queue_free()

print("Oldest revenant removed.")
