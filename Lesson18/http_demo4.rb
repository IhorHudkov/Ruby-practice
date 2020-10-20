require 'net/http'
require 'uri'


def is_wrong_password? password
	uri = URI.parse 'https://account.habr.com/login/?state=c1107094b6845bc4dd995342575f99ac&consumer=habr&hl=ru_RU' 
	response = Net::HTTP.post_form(uri, :email => 'ewqre@gmail.com', :password => password).body
	response.include? 'denied'
end

puts is_wrong_password? 'qewtqet'