$my_var = 100
Pi = 3.14

class  Animal
	
	@@count = 0
	
	def initialize
		@@count += 1
	end
	
	def get_count
		@@count
	end
end

class Mth
	def self.display_pi
		puts Pi
		puts $my_var
	end
end

cat1 = Animal.new
cat2 = Animal.new
cat3 = Animal.new
cat4 = Animal.new

puts cat1.get_count

Mth.display_pi