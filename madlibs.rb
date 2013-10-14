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


		
