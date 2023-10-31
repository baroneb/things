extends Area2D

func _input(event):
 if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
  if $godot.get_rect().has_point(to_local(event.position)):
   print("You clicked on Sprite!")
