extends Node

# Traverse the node tree and replace Tiled objects
func post_import(scene):

	# Load scenes to instantiate and add to the level

	# The scene variable contains the nodes as you see them in the editor.
	# scene itself points to the top node. Its children are the tile and object layers.
	for node in scene.get_children():
		# To know the type of a node, check if it is an instance of a base class
		# The addon imports tile layers as TileMap nodes and object layers as Node2D
		if node extends TileMap:
			# Process tile layers. E.g. read the ID of the individual tiles and
			# replace them with random variations, or instantiate scenes on top of them
			pass
		if node extends Node2D:
			for object in node.get_children():

				# add default properties if missing
				object = CheckProperties(object,object.get_meta("type"))

				# dump entity data to console
				DumpProperties(object,object.get_meta("type"))

				# create scene node for entity

	# You must return the modified scene
	return scene

# ---------------------------------------------------------
# Prepare defaults
# ---------------------------------------------------------
func CheckProperties(obj,type):

	if type == "COIN":
		if !obj.has_meta("item_amount"): obj.set_meta("item_amount",1)
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "AMMO":
		if !obj.has_meta("item_amount"): obj.set_meta("item_amount",10)
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "HEALTH":
		if !obj.has_meta("item_amount"): obj.set_meta("item_amount",100)
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "KEY":
		if !obj.has_meta("key_name"): obj.set_meta("key_name","<undefined>")
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "POWER_UP_SPEED":
		if !obj.has_meta("new_speed"): obj.set_meta("new_speed",300)
		if !obj.has_meta("time_to_off"): obj.set_meta("time_to_off",10)
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "POWER_UP_JUMP":
		if !obj.has_meta("new_jump_force"): obj.set_meta("new_jump_force",300)
		if !obj.has_meta("time_to_off"): obj.set_meta("time_to_off",10)
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "POWER_UP_GRAVITY":
		if !obj.has_meta("new_gravity_x"): obj.set_meta("new_gravity_x",0)
		if !obj.has_meta("new_gravity_y"): obj.set_meta("new_gravity_y",1000)
		if !obj.has_meta("time_to_off"): obj.set_meta("time_to_off",10)
		if !obj.has_meta("item_id"): obj.set_meta("item_id",0)

	if type == "MSG_INFO":
		if !obj.has_meta("info_text"): obj.set_meta("info_text","<undefined>")
		if !obj.has_meta("panel_offset_x"): obj.set_meta("panel_offset_x",0)
		if !obj.has_meta("panel_offset_y"): obj.set_meta("panel_offset_y",0)


	if type == "TELEPORT":
		if !obj.has_meta("key_name"): obj.set_meta("key_name","<undefined>")
		if !obj.has_meta("need_key"): obj.set_meta("need_key",false)
		if !obj.has_meta("key_name"): obj.set_meta("key_name","<undefined>")
		if !obj.has_meta("on_key"): obj.set_meta("on_key","key_up")
		if !obj.has_meta("target_name"): obj.set_meta("target_name","<undefined>")
		if !obj.has_meta("teleport_type"): obj.set_meta("teleport_type",0)

	return obj

# ---------------------------------------------------------
# Dump entity properties
# ---------------------------------------------------------
func DumpProperties(obj,type):
	var prop = ""

	# COIN -----------------------------------------------------------------------

	if type == "COIN":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_amount"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_id"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# AMMO -----------------------------------------------------------------------

	if type == "AMMO":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_amount"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_id"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# HEALTH -----------------------------------------------------------------------

	if type == "HEALTH":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_amount"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_id"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# START_POINT -----------------------------------------------------------------------

	if type == "START_POINT":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# END_POINT -----------------------------------------------------------------------

	if type == "END_POINT":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# KEY -----------------------------------------------------------------------

	if type == "KEY":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "key_name"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_id"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# POWERUP_SPEED -----------------------------------------------------------------------

	if type == "POWER_UP_SPEED":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_id"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "time_to_off"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "new_speed"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# POWERUP_JUMP -----------------------------------------------------------------------

	if type == "POWER_UP_JUMP":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		prop = "type"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "item_id"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "time_to_off"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))
		prop = "new_jump_force"
		if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))

	# POWERUP_GRAVITY -----------------------------------------------------------------------

	if type == "POWER_UP_GRAVITY":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		Dump(obj,"type")
		Dump(obj,"item_id")
		Dump(obj,"time_to_off")
		Dump(obj,"new_gravity_x")
		Dump(obj,"new_gravity_y")

	# MSG_INFO -----------------------------------------------------------------------

	if type == "MSG_INFO":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		Dump(obj,"type")
		Dump(obj,"info_text")
		Dump(obj,"panel_offset_x")
		Dump(obj,"panel_offset_y")


	# TELEPORT -----------------------------------------------------------------------

	if type == "TELEPORT":
		print("---------------------------------------------------------")
		print("Entity: "+obj.get_name())
		print("---------------------------------------------------------")
		Dump(obj,"type")
		Dump(obj,"key_name")
		Dump(obj,"need_key")
		Dump(obj,"on_key")
		Dump(obj,"target_name")
		Dump(obj,"teleport_type")


func Dump(obj,prop):
	if obj.has_meta(prop): print("    - "+prop+" = "+str(obj.get_meta(prop)))