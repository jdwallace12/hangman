require_relative 'hangman_game_setup'
require_relative 'hangman_game'

game_setup = GameSetup.new(0)  


while game_setup.has_valid_player_count? == false
  puts "Please enter a number 1 - 5"
  game_setup.change_player_count(gets.chomp.to_i)
end
  
while game_setup.start_game? == false
  puts "Add player name:"
  game_setup.add_player(gets.chomp)
  puts "Current Player List #{game_setup.players}"
end

players_array_from_game_setup = game_setup.shuffled_players
word_from_game_setup = game_setup.random_word

game = Game.new(players_array_from_game_setup, word_from_game_setup)

puts "OK lets play, these are the players that will start now #{game.players}"

#start game loop
game_in_progress = true

while game_in_progress

  current_player = game.select_player
  puts "Hey #{current_player} you are up, guess a letter or type ! to answer the word."
  puts game.blanked.split(//).join(" ")

  prompt_to_answer_word = ""

  while prompt_to_answer_word != "!"
      prompt_to_answer_word = gets.chomp
    if prompt_to_answer_word == "!"
      puts "what do you think the word is?"
      answer = gets.chomp
      if game.correct_word?(answer)
        puts "That is correct #{current_player}, you win"
        break
      else
        puts "That is incorrect #{current_player}, you lose your turn"
        current_player = game.select_player
        break
      end    
    else
      break
    end
  end  

  guess = ""

  while guess.length != 1

    guess = gets.chomp 
    game.guess_letter(guess)

    if guess.length == 1
      if game.check_word_for(guess)
        puts "You are right, #{guess} is in the word."
        puts "these are the letters already guessed #{game.guessed_letters}"
          if game.guessed_letters[-1].include? guess
            puts "Please pick another letter, that has already been guessed."
          end
      else
        puts "these are the letters already guessed #{game.guessed_letters}"
        puts "Sorry, #{guess} is not in the word."
        current_player = game.select_player
        puts "#{current_player} it is your turn"
      end
    end
  end
end
#end game loop