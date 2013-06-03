
# need to ask how many players want to play
# that number needs to be a valid number before we ask for their name
# need to check that number and make sure it is <= 5 in order to start the game
# if the number is not valid, then they are prompted to enter another number


# once a valid number of players are determined, then each player is asked to enter their names
# each player name must be unique and not repeat.
# I have to match all the name with eachother to determine if they are unique
# all names need to be entered before starting the game

# so probably have an array of players
# at each turn the player's turn is randomized
# every turn the location of the array is randomized so people's order is randomized

# a dictionary of words must be created in order to randomly select from.
# This could be an array of words or CSV file or maybe some sort of gem
# once the dictionary is built, then a random word is picked from it to be played.
# The word must be displayed with blanked out letters when no corect letters are present

# when it is a players turn they can either guess a letter or they can type "!" to guess the word
# if they guess the word correclty, than they win the game
# if they guess it wrong, they lose their turn
# first player to guess the word is the winner


class Players
  def initialize
   @players
  end 

  def number_of_players(number)
    @players = number
    if number > 5
      puts "you can play with a maximum of 5 players"
     else
     @players     
    end
  end

  def player_names(players)
    @names = []
    @players.times do |name|
      "please enter names for the players"
    @names.push name
    end
  end
end

