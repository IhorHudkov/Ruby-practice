﻿def run_5_times
        x = 0
	while x < 5
		yield x, 55
	        x += 1
	end
end

run_5_times { |n, v| puts "x = #{n}, value = #{v}" }


	