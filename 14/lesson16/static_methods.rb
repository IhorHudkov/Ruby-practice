class Man
        attr_reader :name
	
        def initialize name
		@name = name
	end
	
	def self.say_hi
	     puts 'Hi!'
	end

end

class Manager < Man
	def initialize name
		super name
	end
end

class Hipster < Man
	def initialize name
		super name
	end

	def self.say_hi
		puts 'Hiiii,yo!'
	end
end

Manager.say_hi
Hipster.say_hi




