#help from https://github.com/thejoecarroll/edx-cs169.1x-HW1

class WrongNUmberOfPLayers < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1,m2)
	rules = {"R"=>"S","S"=>"P","P" =>"R"}
	
	if rules[m2]==m1		#shows the value stored
		#puts "this is rules[m2]" 
		#puts rules[m2]	
		#puts m1
		1
	else
	0
	end
end

def rps_game_winner(game)
	raise WrongNumberOfPlayersError unless game.length==2
	raise NoSuchStrategyError unless game[0][1] =~ /R|P|S/ and game[1][1] =~ /R|P|S/
	puts game[rps_result(game[0][1], game[1][1])]
end

def rps_tournament_winner(tournament)
	begin
		rps_game_winner tournament
	rescue NoSuchStrategyError	
		rps_game_winner tournament
	rescue WrongNumberOfPlayersError
		puts "Error: wrong numer of players.. weird"
	end
end
rps_game_winner([ ["Armando", "P"], ["Dave", "S"] ])
=begin
test_tourn = [
    [
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"],  ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]


rps_tournament_winner(test_tourn)
=end

