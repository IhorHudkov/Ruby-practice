print 'Enter your password: '
pass = gets.strip

input = File.open 'passwords.txt', 'r'

weak = false

while line = input.gets
	if  line.chomp.include? pass
		puts 'Your password is weak'
		weak = true
		break
	end
			
end

input.close

puts 'Your password is not weak' if !weak 



