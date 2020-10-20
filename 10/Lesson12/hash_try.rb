# encoding: cp866

hh = {1 => [], 2 => [], 3 => [], 4 => ['girl']}

hh[1] << 'asfg'
hh[2].push 'iuhiasd'

hh[4] = 213

hh[:ffff] = 8761234
hh[6] = ''
hh[5] = ''

#puts hh

hh.each_with_index do |(key,value),i|
  	puts "#{i}. #{key}. #{value}"
end
