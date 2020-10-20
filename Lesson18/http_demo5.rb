require 'net/http'
require 'uri'

def is_wrong_password? password
	uri = URI.parse 'http://192.168.1.1/'
	response = Net::HTTP.post_form(uri, :Username => 'admin', :Password => password).body
	response.include? 'quicksetppp'
end

input = File.open 'passwords.txt', 'r'

while line = input.gets
        line.strip!
	if is_wrong_password? line
		puts "Password: #{line}"
		input.close
		exit
	end
end

input.close
puts 'Password is not found'	

