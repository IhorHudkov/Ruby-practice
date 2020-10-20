require 'net/http'
require 'uri'

uri = URI.parse 'https://account.habr.com/login/?state=1ed71226d380e396f1df68860a51cfe6&consumer=habr&hl=ru_RU'
response = Net::HTTP.post_form(uri, :email => 'asdfa@gmail.com', :password => '1235415').body

puts response.include? 'denied'