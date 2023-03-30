extends GridMap


@export var Height = 10;
@export var Lenght = 10;
@export var Width = 10;

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var noise := FastNoiseLite.new();
	noise.noise_type = FastNoiseLite.TYPE_PERLIN;
	noise.seed = randi()
	noise.frequency = 0.02
	#noise.fractal_octaves = 8
	
	for x in Width:
		for y in Lenght:
			for z in Width:
				if y < noise.get_noise_2d(x,z)*5 + 10:
					set_cell_item(Vector3(x,y,z),0);
			
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
