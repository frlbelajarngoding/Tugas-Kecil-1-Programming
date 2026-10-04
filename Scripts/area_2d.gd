extends Area2D

var opened = false

func _on_body_entered(body: Node2D) -> void:
	if opened:
		return

	if body.is_in_group("player_1"):
		opened = true
		$AnimatedSprite2D.play("open")
