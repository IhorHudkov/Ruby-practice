class Animal
   	def initialize name
		@name = name
	end

	def run
		puts "#{@name}: I'm running!"
	end

	def jump
		puts "#{@name}: I'm jumping!"
	end

end

class Cat < Animal
        attr_accessor :cat_name
	
	def initialize name	
		super 'cat'
		@cat_name = name
	end

	def say_meau
		puts 'Meeeaauuu!'
	end
end

class Dog < Animal
        attr_accessor :dog_name
	
	def initialize  name
		super 'dog'
		@dog_name = name
	end

	def say_wouf
		puts 'Wouf! Wouf!'
	end
end

cat1 = Cat.new 'Mursik'
print cat1.cat_name + ': '
cat1.say_meau
puts

dog1 = Dog.new 'Bobik'
print dog1.dog_name + ': '
dog1.say_wouf
puts

cat1.run
dog1.run
puts

cat1.jump
dog1.jump










