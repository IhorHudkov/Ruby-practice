class Artist
	attr_reader :name
	
	def initialize name
		@name = name
		@albums = []
	end

	def add_album album
		@albums << album
	end
	
	def get_albums
		@albums
	end
	
end

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
album2 = Album.new '1997'
album3 = Album.new 'Good'
album4 = Album.new 'Nice'
album5 = Album.new 'Friend'

group1 = Artist.new 'Mountins'

group1.add_album album1
group1.add_album album2
group1.add_album album3
group1.add_album album4
group1.add_album album5


album1.add_song Song.new :name => 'Trees', :duration => 3
album1.add_song Song.new :name => 'Flowers', :duration => 4
album1.add_song Song.new :name => 'Sky', :duration => 2
album1.add_song Song.new :name => 'Rivers', :duration => 5

puts '===================================='
puts "Artist: #{group1.name}"
puts
puts 'Albums:'
puts
group1.get_albums.each { |album| puts"#{album.name}" }
puts
puts album1.name
puts
album1.display_songs
puts '===================================='
	


