# You're a top developer at a cyber-security firm. You have been sent a file from an anonymous source with information about Melbourne's most wanted. 
# You need to take the drug information from the file and ** read its contents into a 2d array ** so that you can work with the data in your program.
# The file is attached below.
require 'fileutils'
fileName = "source_file.txt"
fileRead = File.open(fileName,"r")

file = fileRead.read 
drug_list = []
array_drug = file.split("\n")
array_drug.each do |element|
	drug_list.push(element.split(','))
end

fileRead.close
binding.pry