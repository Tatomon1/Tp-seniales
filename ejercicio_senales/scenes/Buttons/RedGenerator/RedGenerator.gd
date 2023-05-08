extends TextureButton

@onready var generarBloqueRed = preload("res://scenes/Blocks/Red/BlockRed.tscn")


func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	generate_block()
	
	pass # Replace with function body.

func generate_block():
	#Generar bloque
	var instanciaRedBlock = generarBloqueRed.instantiate()
	add_child(instanciaRedBlock)
	pass
