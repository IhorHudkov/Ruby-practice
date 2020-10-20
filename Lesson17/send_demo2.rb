def my_method hh
	puts hh.inspect
end

send :my_method, :x => 5, :y => 10