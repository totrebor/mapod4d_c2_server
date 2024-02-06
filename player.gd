# tool

# class_name

# extends
extends Node3D

## A brief description of your script.
##
## A more detailed description of the script.
##
## @tutorial:            http://the/tutorial1/url.com
## @tutorial(Tutorial2): http://the/tutorial2/url.com


# ----- signals

# ----- enums

# ----- constants

# ----- exported variables

# ----- public variables

# ----- private variables

# ----- onready variables
@onready var mapod = $Mapod

# ----- optional built-in virtual _init method

# ----- built-in virtual _ready method

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# ----- remaining built-in virtual methods

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass # Replace with function body.


func _unhandled_input(event):
	pass
	#if event is InputEventMouseMotion and Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		##rotate_y(-event.relative.x * mouse_sensitivity)
		##$Camera3D.rotate_x(-event.relative.y * mouse_sensitivity)
		##$Camera3D.rotation.x = clampf($Camera3D.rotation.x, -deg_to_rad(70), deg_to_rad(70))
		#var rotate_vector: Vector2
		#if event.relative.y > 0:
			#rotate_vector.x = 1
		#else:
			#rotate_vector.x = -1
		#mapod.mapod_rotate(rotate_vector)

func _physics_process(delta):
	#if Input.is_action_pressed("mapod_w"):
		#mapod.fw_thrust()
	#if Input.is_action_pressed("mapod_s"):
		#mapod.bk_thrust()
	#if Input.is_action_pressed("mapod_a"):
		#mapod.lf_thrust()
	#if Input.is_action_pressed("mapod_d"):
		#mapod.rg_thrust()
	#if Input.is_action_pressed("mapod_q"):
		#mapod.up_thrust()
	#if Input.is_action_pressed("mapod_space"):
		#mapod.dw_thrust()
	pass

# ----- public methods
@rpc("any_peer", "call_local")
func setup_multiplayer(player_id):
	pass


@rpc("any_peer", "call_remote")
func fw_thrust(player_name):
	if player_name == name:
		mapod.fw_thrust()


@rpc("any_peer", "call_remote")
func bk_thrust(player_name):
	if player_name == name:
		mapod.bk_thrust()

# ----- private methods





