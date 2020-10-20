class Book
	def initialize
		@hh = {}	
	end
	
	def add_person  options
		
		@hh[options[:name]] = options[:age]
	end

	def show_hash
		@hh.each do |key, value|
			puts "Name: #{key}, age: #{value}"
		end
	end
	
	def name_exists? name
	
		return true if @hh[name]
	        false
	end
        
end


#@hh = {}

#def add_person options
#	@hh[options[:name]] = options[:age]
#end

#def show_hash
	
#	@hh.each do |key, value|
#		puts "Name: #{key}, age: #{value}"
#	end
#end

#def name_exists? name
	
#	return true if @hh[name]
	
#	false
#end

book = Book.new

loop do
	
	print 'Enter your name: '
	name = gets.strip.capitalize
	
	if book.name_exists? name
		puts 'such name already exists!'
	        next
	end
	
	if name == ''
		break
	end

	print 'Enter your age: '
	age = gets.to_i

	if age == 0
		break
	end
	
	book.add_person :name => name, :age => age
end

puts
book.show_hash


