class Album
	attr_reader :name
	
	def initialize name
		@name = name
		@songs = []
	end

	def add_song song
		@songs << song
	end

	def display_songs
		@songs.each { |song| puts "#{song.name}, #{song.duration} min" }
	end 
end

class Song
	attr_reader :name, :duration

	def initialize options
		@name = options[:name]
		@duration = options[:duration]
	end
end

album1 = Album.new 'The best'

album1.add_song Song.new :name => 'Trees', :duration => 3
album1.add_song Song.new :name => 'Flowers', :duration => 4
album1.add_song Song.new :name => 'Sky', :duration => 2
album1.add_song Song.new :name => 'Rivers', :duration => 5

puts '===================================='
puts album1.name
puts
album1.display_songs
puts '===================================='
	


