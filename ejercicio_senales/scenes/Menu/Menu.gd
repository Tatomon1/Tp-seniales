extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0

func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$RedGenerator.connect("button_down", count_new_instance)
	$VioletGenerator.connect("button_down", count_new_instance)
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass

func count_new_instance():
	instancesCount += 1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)


func _on_red_generator_button_down():
	count_new_instance()
	pass # Replace with function body.


func _on_violet_generator_button_down():
	count_new_instance()
	pass # Replace with function body.

func delete():
	instancesCount = 0
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)


func _on_reset_button_down():
	delete()
	pass # Replace with function body.
