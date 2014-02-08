#help from https://github.com/thejoecarroll/edx-cs169.1x-HW1

#yeah = "what up gangsta man haas haas"

def count_words(str)
	counts = {}
	str.downcase.scan(/\b[a-z]+/).each do |word|#word is the index here
		if counts[word].nil? then
			counts[word]=1
		else
			counts[word] +=1
		end
	end
	puts counts
end

#count_words(yeah)
