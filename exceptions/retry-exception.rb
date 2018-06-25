#!/usr/bin/ruby

count = 0
begin
   file = open("/unexistant_file")
   if file
      puts "File opened successfully"
   end
rescue
   fname = "existant_file"
   puts "File not opened, retry!!!"
   count = count + 1
   if count >= 3
        exit
   end
   retry
end
