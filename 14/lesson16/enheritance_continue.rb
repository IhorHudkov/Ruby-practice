class Man
        attr_reader :name
	
        def initialize options
		@hi_str = options[:hi_str]
		@name = options[:name]
	end
	
	def say_hi
	     puts @hi_str
	end

end

class Manager < Man
	def initialize name
		super :name => name, :hi_str => 'Hi!'
	end
end

class Hipster < Man
	def initialize name
		super :name => name, :hi_str => 'Hiiii, yo!'
	end
end



manager1 = Manager.new 'Tom'
puts manager1.name
manager1.say_hi

hipster1 = Hipster.new 'Hank'
puts hipster1.name
hipster1.say_hi





