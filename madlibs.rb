systemtext,inputNoun,inputAdjective,inputVerb,inputAdverb,inputObject=""

madlib= { "Noun" => "", "Adjective" => "","Verb" => "", "Adverb" => "", "Object" => "" }

systemtext1 = "The (adjective) (noun) suddenly and (adverb) had to (verb) the (object)."

systemtext2 = "You should (verb) a (adjective) (noun) to put it ontop of (object)."

systemtext3 = "How much is that (noun) in the (object)?"

systemArray = [systemtext1, systemtext2, systemtext3]

#Noun
puts "Please enter a noun or noun phrase:"
inputNoun = gets.chomp 
inputNoun = inputNoun.strip
madlib["Noun"] = inputNoun
systemtext = systemtext.sub("(noun)", madlib["Noun"])
puts systemtext
#Adjective
puts "Please enter an Adjective:"
inputAdjective = gets.chomp 
inputAdjective = inputAdjective.strip
madlib["Adjective"] = inputAdjective
systemtext = systemtext.sub("(adjective)", madlib["Adjective"])
#puts systemtext
#Verb
puts "Please enter a Verb:"
inputVerb = gets.chomp 
inputVerb = inputVerb.strip
madlib["Verb"] = inputVerb
systemtext = systemtext.sub("(verb)", madlib["Verb"])
#puts systemtext
#Adverb
puts "Please enter an Adverb:"
inputAdverb = gets.chomp 
inputAdverb = inputAdverb.strip
madlib["Adverb"] = inputAdverb
systemtext = systemtext.sub("(adverb)", madlib["Adverb"])
#puts systemtext
#Object
puts "Please enter an Object:"
inputObject = gets.chomp 
inputObject = inputObject.strip
madlib["Object"] = inputObject
systemtext = systemtext.sub("(object)", madlib["Object"])
puts("--- Hash -----")
puts madlib
puts("--- Final sentence -----")
puts systemtext

for i in 0.. systemArray.length - 1 do 
	systemArray[i] = systemArray[i].sub("(noun)", madlib["Noun"])
	systemArray[i] = systemArray[i].sub("(adjective)", madlib["Adjective"])
	systemArray[i] = systemArray[i].sub("(verb)", madlib["Verb"])
	systemArray[i] = systemArray[i].sub("(adverb)", madlib["Adverb"])
	systemArray[i] = systemArray[i].sub("(object)", madlib["Object"])
	puts systemArray[i] 
end


# if i == 2 
# 		systemArray[i] = systemArray[i].sub("(noun)", madlib["Noun"])
# 		systemArray[i] = systemArray[i].upcase
# 		puts Unicode::capitalize (systemArray[i])
# 	end

 # or you can do it this way.
 # puts "Please enter a noun or noun phrase:"
 # inputNoun = gets.chomp
 # puts "The #{inputNoun} went to sea in a sturdy ship."
