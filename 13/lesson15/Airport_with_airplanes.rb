class Airport
	attr_reader :name
	
	def initialize name
		@name = name
		@airplanes = []
	end
	
	def add_airplane airplane
		@airplanes << airplane
	end
	
	def show_list_of_airplanes
		@airplanes.size.times do |i|
			puts "#{i + 1}.\t#{@airplanes[i]}"	
		end
	end
end

class Airplane
	attr_reader :model
	
	def initialize model
		@model = model
	end

end

airport1 = Airport.new 'Sheremetievo'
airport2 = Airport.new 'Chicago'

models = ['Boeing 747', 'IL67', 'TU - 144']

3.times { airport1.add_airplane models[rand(0..2)] }
3.times { airport2.add_airplane models[rand(0..2)] }

puts '=================================='
puts airport1.name
puts
airport1.show_list_of_airplanes
puts '=================================='

puts airport2.name
puts
airport2.show_list_of_airplanes
puts '=================================='




