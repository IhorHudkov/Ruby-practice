# encoding: cp866

def get_commands
	action = [:left, :right, :up, :down]
	x = rand(0..3)
	return action[x]
end

command = get_commands

puts "����祭� ������� #{command}"

if command == :left
	puts "����� ���� �����"
end

if command == :right
	puts "����� ���� ��ࠢ�"
end

if command == :up
	puts "����� ���� �����"
end

if command == :down
	puts "����� ���� ����"
end