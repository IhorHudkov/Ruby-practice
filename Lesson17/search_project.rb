def search_file file_name, x_path
	 
	if File.basename(x_path)[0] != ?.

	if File.directory?(x_path)
  	Dir.chdir x_path if File.directory?(x_path)
	current_directory = Dir.entries(Dir.pwd)
		if current_directory.include? file_name
			return x_path + "#{file_name}"
		end
		
			current_directory.delete '.'
   			current_directory.delete '..'
			if !current_directory[0]
				Dir.chdir '..'
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
			
			Dir.chdir '..'
			return 0
	    else
                Dir.chdir '..'
			return 0
		end
	else
                Dir.chdir '..'
			return 0
		end
		
		
		
end

puts search_file 'de.mo', 'D:/'







