class Book
	attr_reader :last_person     # только для чтения извне
#	attr_accesor :hh  # полный доступ извне для чтения и записи в переменную hh (хеш)
	
	def initialize
		@hh = {}
		@last_person = nil #эта строка не обязательна	
	end
	
	def add_person  options
		
		@last_person =  options[:name]
		@hh[options[:name]] = options[:age]
	end
	
#	def get_last_person         #Данный метод уже не нужен , так как переменная last_person помечена атрибутом attr_reader
#		@last_person        
#	end

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

puts "Last person added: #{book.last_person}"


