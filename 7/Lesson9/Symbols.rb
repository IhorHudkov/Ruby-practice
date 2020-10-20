# encoding: cp866

def controls i
	if i == :up
		puts "Робот едет вверх"
	end
	if i == :down
		puts "Робот едет вниз"
	end
	if i == :right
		puts "Робот едет вправо"
	end
	if i == :left
		puts "Робот едет влево"		
	end

end

rand_int = rand(0..3)

if rand_int == 0
	    controls :up
end

if rand_int == 1
	    controls :down
end

if rand_int == 2
	    controls :right
end

if rand_int == 3
	    controls :left
end


