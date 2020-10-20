class Animal
	
	def run
		@name = 'Dog'
		puts "I'm running!"
		puts "I'm a #{@name}"
	end
	
	def stop
		puts "The #{@name} is stop"
	end

end

a = Animal.new
a.run
a.stop

b = Animal.new
puts b