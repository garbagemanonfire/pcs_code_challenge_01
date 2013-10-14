class Madlib
	
	def initialize			
		systemtext,inputNoun,inputAdjective,inputVerb,inputAdverb,inputObject=""
		@madlib= { "Noun" => "", "Adjective" => "","Verb" => "", "Adverb" => "", "Object" => "" }
		puts @arrayOfText
		@systemArray= ["Noun", "Adjective","Verb","Adverb","Object"]
		@grammarKeywordArray = ["(noun)", "(adjective)","(verb)","(adverb)","(object)"]
		
		userInputText1="Please enter a noun or noun phrase:"
		userInputText2="Please enter an Adjective:"
		userInputText3="Please enter a Verb:"
		userInputText4="Please enter an Adverb"
		userInputText5="Please enter an Object"
		@userInputArray =[userInputText1,userInputText2,userInputText3,userInputText4,userInputText5]
	end

	def prompt()
		for i in 0..@userInputArray.length-1 do
			puts (@userInputArray[i])
			input = gets.chomp 
			input = input.strip
			@madlib[@systemArray[i]] = input	
		end			
	end
	
	def insert(currentSentence)		
		for i in 0..@userInputArray.length-1 do
			systemGrammar=@systemArray[i]
			input=@madlib[systemGrammar];		
			currentSentence = currentSentence.sub(@grammarKeywordArray[i], @madlib[systemGrammar])		end	
		puts currentSentence
		return currentSentence	
	end	
	private
	@madlib
end


systemtext1 = "The (adjective) (noun) suddenly and (adverb) had to (verb) the (object)."
systemtext2 = "You should (verb) a (adjective) (noun) to put it ontop of (object)."
systemtext3 = "How much is that (noun) in the (object)?"

madlib=Madlib.new()
madlib.prompt()
madlib.insert(systemtext1)
madlib.insert(systemtext2)
madlib.insert(systemtext3)


		
		
		#Noun
		#puts "Please enter a noun or noun phrase:"
		#inputNoun = gets.chomp 
		#inputNoun = inputNoun.strip
		#@madlib["Noun"] = inputNoun
		#systemtext = systemtext.sub("(noun)", @madlib["Noun"])
		#puts systemtext
#		#Adjective
#		puts "Please enter an Adjective:"
#		inputAdjective = gets.chomp 
#		inputAdjective = inputAdjective.strip
#		@madlib["Adjective"] = inputAdjective
#		systemtext = systemtext.sub("(adjective)", @madlib["Adjective"])
#		#puts systemtext
#		#Verb
#		puts "Please enter a Verb:"
#		inputVerb = gets.chomp 
#		inputVerb = inputVerb.strip
#		madlib["Verb"] = inputVerb
#		systemtext = systemtext.sub("(verb)", madlib["Verb"])
#		#puts systemtext
#		#Adverb
#		puts "Please enter an Adverb:"
#		inputAdverb = gets.chomp 
#		inputAdverb = inputAdverb.strip
#		madlib["Adverb"] = inputAdverb
#		systemtext = systemtext.sub("(adverb)", madlib["Adverb"])
#		#puts systemtext
#		#Object
#		puts "Please enter an Object:"
#		inputObject = gets.chomp 
#		inputObject = inputObject.strip
#		madlib["Object"] = inputObject
#		systemtext = systemtext.sub("(object)", madlib["Object"])
#		puts("--- Hash -----")
#		puts madlib
#		puts("--- Final sentence -----")
#		puts systemtext

#
#for i in 0.. systemArray.length - 1 do 
#	systemArray[i] = systemArray[i].sub("(noun)", madlib["Noun"])
#	systemArray[i] = systemArray[i].sub("(adjective)", madlib["Adjective"])
#	systemArray[i] = systemArray[i].sub("(verb)", madlib["Verb"])
#	systemArray[i] = systemArray[i].sub("(adverb)", madlib["Adverb"])
#	systemArray[i] = systemArray[i].sub("(object)", madlib["Object"])
#	puts systemArray[i] 
#end


# if i == 2 
# 		systemArray[i] = systemArray[i].sub("(noun)", madlib["Noun"])
# 		systemArray[i] = systemArray[i].upcase
# 		puts Unicode::capitalize (systemArray[i])
# 	end

 # or you can do it this way.
 # puts "Please enter a noun or noun phrase:"
 # inputNoun = gets.chomp
 # puts "The #{inputNoun} went to sea in a sturdy ship."
