extends Sprite2D
## This is a sprite2d that takes an action name and automatically loads the proper icon

##TODO: Add support for joysticks, steam deck, switch, etc.
class_name ActionIcon
@export var action: StringName
@export var action_index: int
@export var outline: bool = false


func _ready():
	get_action_icon()


##Uncomment for debug

# func _input(event):
# 	if (event is InputEventKey or event is InputEventMouseButton) and event.is_released():
# 		texture = ActionIconGlobal.get_icon(action, action_index, outline)


func get_action_icon() -> void:
	if !action:
		return
	texture = ActionIconGlobal.get_icon(action, action_index, outline)