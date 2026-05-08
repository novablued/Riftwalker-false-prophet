extends Node

signal enemy_defeated(enemy)
signal revenant_summoned(revenant)
signal player_damaged(amount)
signal battlefield_escalated(level)

func emit_enemy_defeated(enemy):
    emit_signal("enemy_defeated", enemy)

    func emit_revenant_summoned(revenant):
        emit_signal("revenant_summoned", revenant)

        func emit_player_damaged(amount):
            emit_signal("player_damaged", amount)

            func emit_battlefield_escalated(level):
                emit_signal("battlefield_escalated", level)extends