print "(R)ock, (S)cissors, (P)aper? "
user_answer = gets.strip.capitalize

if user_answer == "R"
	user_choice = :rock
elsif user_answer == "S"
	user_choice = :scissors
elsif user_answer == "P"
	user_choice = :paper
else
	puts "Can't understand what you want, sorry.."
	exit
end

arr = [:rock, :scissors, :paper]
computer_choice = arr[rand(0..2)]

matrix = [

	[:rock,:scissors,:computer_win],
	[:rock,:paper,:user_win],
	[:rock,:rock,:draw],

	[:scissors,:rock,:user_win],
	[:scissors,:paper,:computer_win],
	[:scissors,:scissors,:draw],

	[:paper,:rock,:computer_win],
	[:paper,:scissors,:user_win],
	[:paper,:paper,:draw]

]

print "===3==="
sleep 1
print "\r===2==="
sleep 1
print "\r===1==="
sleep 1
print "\r======="
puts
puts "Computer choice: #{computer_choice}"

matrix.each do |sub_array|
	if sub_array[0] == computer_choice && sub_array[1] == user_choice
		if sub_array[2] == :computer_win
			puts "Computer wins"
		elsif sub_array[2] == :user_win
			puts "You wins!"
		else
			puts "Draw"
		end	
		exit	
	end
end

