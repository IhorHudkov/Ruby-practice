require 'net/http'
require 'uri'

#uri = URI.parse 'http://192.168.1.1/'
#response = Net::HTTP.get uri

#puts response#.include? 'quicksetppp'

uri = URI.parse 'http://192.168.1.1/html/content1.asp'
response = Net::HTTP.get uri
puts response#.include? 'quicksetppp'

