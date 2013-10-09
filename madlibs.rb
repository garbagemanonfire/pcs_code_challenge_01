systemtext = "The (noun or noun phrase) went to sea in a sturdy ship."

puts "Please enter a noun or noun phrase:"
input = gets.chomp 
input = input.strip
systemtext = systemtext.sub("(noun or noun phrase)", input)
puts systemtext

 # puts "Please enter a noun or noun phrase:"
 # input = gets.chomp
 # puts "The #{input} went to sea in a sturdy ship."
