#ASCII Chars | 97-122 lowercase | 65 - 90 uppercase

puts "Input a word or phrase for encryption:"
cipher = gets.chomp

puts "Input your shift amount:"
shift = gets.chomp
shift = shift.to_i % 26 #Accounts for numbers above 26 letters in the alphabet

puts "Your message has been encrypted:"

output = []


cipher.each_char do |character|
	
	new_character = character.ord + shift
	
	if (character.ord == 32) #Skip letter if it's a space
		character = ' '
	elsif new_character > 122 || (new_character > 90 && new_character < 97)
		character = (new_character - 26).chr
	else
		character = new_character.chr
	end
	
	output << character
end

puts output.join

