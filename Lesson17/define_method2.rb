print 'Name of method to define: '
method_name = gets.strip

send :define_method, method_name do
	puts "Hello, i'm new method #{method_name}"
end

send method_name