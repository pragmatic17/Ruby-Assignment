#help from https://github.com/thejoecarroll/edx-cs169.1x-HW1 and the interview Grading TA

yeah="Dad"

def palindrome?(string)
	if (string.gsub(/[^A-Za-z]/,'').downcase) == string.gsub(/[^A-Za-z]/,'').downcase.reverse
		puts "true"
	else
		puts "false"	
	end	
end

palindrome?(yeah)

