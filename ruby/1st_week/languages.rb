
def trans(language)

	languages = {

		:de => "German",
		#de: "German"
		:en => "English",
		:es => "Spanish",
	}

	dictionary = {
		:de => { :one => "eins", :two => "zwei", :three =>"drei"},
		:en => { :one => "one", :two => "two", :three =>"three"},
		:es => { :one => "uno", :two => "dos", :three =>"tres"},
	}

	#languages.each do |language, lang|
		
		#if languages[language] != "English"
			puts "In #{languages[language]}, "+
			"#{dictionary[language][:one]} means one, "+
			"#{dictionary[language][:two]} means two, "+
			"#{dictionary[language][:three]} means three"
		#end

	#end

end

trans(:de)
trans(:es)