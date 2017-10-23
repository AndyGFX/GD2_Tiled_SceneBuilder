extends Node


const SAVE_PATH = "res://export_data"

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
				
				var name = object.get_name()
				print("ENTITY NAME: "+name)
				
				var metalist = object.get_meta_list()
				Save(metalist,name)
				if object.has_meta("type"):
					var type = object.get_meta("type")
					print("       TYPE: "+type)
				
				
				

	# You must return the modified scene
	return scene
	
# ---------------------------------------------------------
# Save inventory data
# ---------------------------------------------------------
func Save(data, name):

	# Open the existing save file or create a new one in write mode
	var save_file = File.new()
	save_file.open(SAVE_PATH+"/"+name+".json", File.WRITE)

	# converts to a JSON string. We store it in the save_file
	save_file.store_line(data.to_json())
	# The change is automatically saved, so we close the file
	save_file.close()
	print("Export saved.")
