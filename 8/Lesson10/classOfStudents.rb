# encoding: cp866

arr = %w[Hank Molly Jessie Hank Jr]

while 2 + 2 == 4
	x = 1
	arr.each do |name|
		puts "#{x}. #{name}"
		x = x + 1		
	end
	puts "���� ��� 㤠����?(���浪��� �����)"
	arr.delete_at gets.to_i - 1
	puts	
end