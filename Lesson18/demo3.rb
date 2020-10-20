def is_password_weak? password
	input = File.open 'passwords.txt', 'r'
	
	bool_var = false
	
	while line = input.gets
		line.strip!
		if password.include? line
			bool_var = true
			break
		end
	end
	
	input.close
	bool_var
end 

print 'Enter password: '
pass = gets.strip

if is_password_weak? pass
	puts 'Your password is weak'
else
	puts 'Your password is not weak'
end