def search_file file_name, x_path
	 
	if File.basename(x_path)[0] != ?.

	if File.directory?(x_path)
	begin
	
  		Dir.chdir x_path if File.directory?(x_path)
		current_directory = Dir.entries(Dir.pwd)
		puts Dir.pwd
	rescue
		n = 0
		begin
		        input = File.open "#{Dir.home}/Access_Denied_Log1.txt", 'r'
			while line = input.gets
				n += 1
			end
			input.close
		rescue

		end

	        output =  File.open "#{Dir.home}/Access_Denied_Log1.txt", 'a'
		output.write "#{n + 1}.Access denied: #{x_path}\n"
		output.close
		return 0
	end
		if current_directory.include? file_name
			return x_path + "#{file_name}"
		end
		
			current_directory.delete '.'
   			current_directory.delete '..'
			if !current_directory[0]
				return 0
			end
			current_directory.each do |item|
		
		        	if File.directory?(x_path + item)
					if  File.basename(x_path + item)[0] != ?.
   						a = search_file file_name, x_path + item + '/' 
							if a == 0
								next
							else 
								return a
							end
					end
				end
			end
			
			return 0
	    else
			return 0
		end
	else
			return 0
		end
		
		
		
end

puts search_file 'cacert.pem', 'C:/'







