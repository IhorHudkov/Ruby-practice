def show_book book
	puts '==================================<br/>'
	book.each do |key, value|
		puts "<i>Name</i>: #{key}, age: <b>#{value}</b><br/>"
	end
	puts '==================================<br/>'
end

book1 = {:Mike => 23, :Stan => 34, :Molly => 17}
book2 = {:Walt => 12, :Susy => 23}

book = book2.merge book1
show_book book
