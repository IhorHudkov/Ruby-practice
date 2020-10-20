input = File.open 'task.txt', 'r'
year_salary = 0
report = ''
count = 0
six_month_salary = 0

while line = input.gets
	lines =	line.split ','
	year_salary += lines[1].to_i
	report += "#{lines[1].chomp} +\n"
	six_month_salary += lines[1].to_i if count < 6
	count += 1
end
input.close

output = File.open 'year_salary.txt', 'w'
output.write "Year salary: ", year_salary, "\nsix month salary: ", six_month_salary
output.close

report += "---------------------\n= #{year_salary}" 
output = File.open 'report.txt', 'w'
output.write report
output.close