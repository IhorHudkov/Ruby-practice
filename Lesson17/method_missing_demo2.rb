class Albuquerque
	def initialize actions
	        @actions = actions
	end
	
	def method_missing name
		value = @actions[name]
		puts "If you want to #{name}, you must call #{value}"
	end
end

s = Albuquerque.new :cook => 'Walt', :take_a_ride => 'Jessie', :eat => 'Gus'
s.cook
s.take_a_ride
s.eat
		