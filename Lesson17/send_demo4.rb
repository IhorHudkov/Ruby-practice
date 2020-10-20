class Something
	attr_accessor :x, :y, :z

	def initialize hash
		hash.each do |key, value|
			send "#{key}=", value
		end
	end
end

s = Something.new :x => 1, :z => 3, :y => 2 
puts s.inspect
puts "x = #{s.x}, y = #{s.y}, z = #{s.z}"

