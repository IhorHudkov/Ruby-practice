# encoding: cp866

puts "�ணࠬ�� \"��������\" v.1.0"
        
puts "������ ��䬥��᪮� ��ࠦ���� ���� a(+ - * /)b � ������ Enter"

expression = gets.strip
a = ""
b = ""
expression.size.times do  |i|
	if expression[i] == "+"  
		
		0.upto(i - 1) { |x| a = a + expression[x]  }
		A = a.to_i
                
		(i+1).upto(expression.size - 1) { |y| b = b + expression[y] }
		B = b.to_i
		
		puts "#{A} + #{B} = #{A + B}"
	end

	if expression[i] == "-"  
		
		0.upto(i - 1) { |x| a = a + expression[x]  }
		A = a.to_i
                
		(i+1).upto(expression.size - 1) { |y| b = b + expression[y] }
		B = b.to_i
		
		puts "#{A} - #{B} = #{A - B}"
	end

	if expression[i] == "*"  
		
		0.upto(i - 1) { |x| a = a + expression[x]  }
		A = a.to_i
                
		(i+1).upto(expression.size - 1) { |y| b = b + expression[y] }
		B = b.to_i
		
		puts "#{A} * #{B} = #{A * B}"
	end

	if expression[i] == "/"  
		
		0.upto(i - 1) { |x| a = a + expression[x]  }
		A = a.to_i
                
		(i+1).upto(expression.size - 1) { |y| b = b + expression[y] }
		B = b.to_i
		
		if B == 0 
			puts "������� �� ���� �� ����� ��᫠"
			exit
		end
		
		puts "#{A} / #{B} = #{A / B}"
	end
end
