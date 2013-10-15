class Madlib
	
	def initialize			
		systemtext,inputNoun,inputAdjective,inputVerb,inputAdverb,inputObject=""
		@madlib= { "Noun" => "", "Adjective" => "","Verb" => "", "Adverb" => "", "Object" => "", "Transportation" => "" }
		puts @arrayOfText
		@systemArray= ["Noun", "Adjective","Verb","Adverb","Object","Transportation"]
		@grammarKeywordArray = ["(noun)", "(adjective)","(verb)","(adverb)","(object)", "(transportation)"]
		
		userInputText1="Please enter a noun or noun phrase:"
		userInputText2="Please enter an Adjective:"
		userInputText3="Please enter a Verb:"
		userInputText4="Please enter an Adverb"
		userInputText5="Please enter an Object"
		userInputText6="Please enter a mode of Transportation"
		@userInputArray =[userInputText1,userInputText2,userInputText3,userInputText4,userInputText5,userInputText6]
		transportationInputtext1= "1. in a boat"
		transportationInputtext2= "2. on a bus"
		transportationInputtext3= "3. inside a whale"
		transportationInputtext4= "4. clinging under a speeding truck"
		@transportationArray = [transportationInputtext1,transportationInputtext2,transportationInputtext3,transportationInputtext4]
	end

	def prompt()
		for i in 0..@userInputArray.length-1 do
			if @userInputArray[i] == "Please enter a mode of Transportation"
				puts "Choose one of the following:" 
				puts "1. in a boat"
				puts "2. on a bus"
				puts "3. inside a whale"
				puts "4. clinging under a speeding truck"
			else 
				puts (@userInputArray[i])
			end
				input = gets.chomp 
				input = input.strip
				@madlib[@systemArray[i]] = input
		end			
	end
	
	def insert(currentSentence)		
		for i in 0..@userInputArray.length-1 do
			systemGrammar=@systemArray[i]
			input=@madlib[systemGrammar];
			stringpattern = @madlib[systemGrammar];
			if @grammarKeywordArray[i] == "(transportation)"
				num = input.to_i-1
				input = @transportationArray[num]
				stringpattern = stringpattern + ". "
				input = input.sub(stringpattern, "")
				currentSentence = currentSentence.sub(@grammarKeywordArray[i], input)
			else 
				currentSentence = currentSentence.sub(@grammarKeywordArray[i], @madlib[systemGrammar])
			end
	
		end	
		puts currentSentence
		return currentSentence	
	end	
	private
	@madlib
end


systemtext1 = "The (adjective) (noun) suddenly and (adverb) had to (verb) the (object)."
systemtext2 = "You should (verb) a (adjective) (noun) to put it ontop of (transportation)."
systemtext3 = "How much is that (noun) in the (object)?"
systemtext4 = "Put the (noun) (transportation)!"

madlib=Madlib.new()
madlib.prompt()
madlib.insert(systemtext1)
madlib.insert(systemtext2)
madlib.insert(systemtext3)
<<<<<<< HEAD
madlib.insert(systemtext4)
=======


		
>>>>>>> 3eb2c7ab58acbb4ff94aadd982d6f85ca16a11b8
