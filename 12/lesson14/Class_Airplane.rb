class Airplane
	attr_reader :model
	attr_accessor :speed
	attr_accessor :altitude

	def initialize(model)
		@model = model
		@speed = 0
		@altitude = 0	
	end

	def fly options
		@speed = options[:speed]
		@altitude = options[:altitude]
		puts "My speed: #{@speed}, my altitude: #{@altitude}"
	end
	
	def land
		@speed = 0
		@altitude = 0
		puts 'I landed'
	end

	def is_moving?
		@speed > 0
	end
end

planes = []
models = ['Boeing - 737', 'IL - 67', 'Airbus - 323']

10.times do |plane|
	planes << Airplane.new(models[rand(0..2)])
	puts "Model: #{planes[plane].model}, Speed: #{planes[plane].speed}, Alt: #{planes[plane].altitude}"
	
	if rand(0..1) == 1
		planes[plane].fly :altitude => rand(500..1000), :speed => rand(1000..5000)
		puts "Is moving: #{planes[plane].is_moving?}"
		planes[plane].land
		puts "Is moving: #{planes[plane].is_moving?}"
	end
	puts
end