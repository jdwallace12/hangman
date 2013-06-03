require 'rspec'
require_relative 'hangman_player'


# need to ask how many players want to play
# that number needs to be a valid number before we ask for their name
# need to check that number and make sure it is < 5 in order to start the game
# if the number is not valid, then they are prompted to enter another number






describe Players do
 let(:players) {Players.new}

  it 'ask me how many player want to play' do
    player = players.number_of_players(6)
    expect(player).to eql("you can play with a maximum of 5 players")
  end
  
  it 'ask to enter the valid players name' do 
  end

end

