extends Node2D
var rng = RandomNumberGenerator.new()
var spwned = 1
var spwn = 0

var wood = 0
var water = 0 
var seeds = 0 
var dirt = 0
var plank = 0
var stone = 0
var door = 0
var bucket = true 
var knife = false
var pa = false

func _process(delta):
	$log/Label.text = str(wood, "wood")
func _on_button_pressed():
	$OVRb/progressbar.play("default")
	$OVRb/ovrT.start()
	pass # Replace with function body.


func _on_timer_timeout():
	$OVRb/progressbar.play("no")
	print("TIMEOUT")
	spawner()
	if spwned == 1:
		wood = wood+ 1
	elif spwned== 2 : water = water + 1
	elif spwned == 3 : dirt = dirt +1
	elif spwned >= 4 : seeds= seeds+1
	$OVRb/spawn.frame = spwn
	$OVRb/spawn.show()
	pass # Replace with function body.

#spawner
func spawner():
	$OVRb/spawn.hide()
	spwn = rng.randf_range(1, 5)
	spwn = int(round(spwn))
	if bucket == false and spwn == 2 or knife == false and spwn >= 4 or pa == false and spwn == 3:
		spawner()

	pass

