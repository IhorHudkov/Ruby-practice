require 'net/http'

response = Net::HTTP.get 'rubyschool.us', '/'
puts response