class Something
	def method_missing name    #должен принимать минимум один параметр
		puts "Calling unknown method #{name}"
	end
end

s = Something.new
s.jhbdslfklebfasdf
s.akjsdkf
		