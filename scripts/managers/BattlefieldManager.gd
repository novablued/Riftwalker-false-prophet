extends Node

var escalation_level := 0
var enemy_defeat_count := 0

func register_enemy_defeat():

    enemy_defeat_count += 1

        print("Enemy defeats:", enemy_defeat_count)

            if enemy_defeat_count % 5 == 0:
                    escalate_battlefield()

                    func escalate_battlefield():

                        escalation_level += 1

                            print("Battlefield escalated to level:", escalation_level)extends