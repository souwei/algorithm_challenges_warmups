require "pry"
puts "Say something to Dan"
message_to_dan = gets
newMessage = message_to_dan.strip
newMessage = newMessage.delete(' ')
def leet_speak(word)
	#alternative to tr  is gsub with reg exp
	puts word.tr('aeio','4310')
end 

if newMessage.empty?
	puts "Fine. Be that way"
elsif newMessage =~ /\?(.*)/
	puts "Whatever"
elsif newMessage.include?("Bro,")
	puts leet_speak(message_to_dan)
elsif newMessage =~ /[A-Z](...)/
	puts "Woah, Chill out!"
else
	puts "Nothing to counter"
end
