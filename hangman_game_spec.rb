require 'rspec'
require_relative 'hangman_game'


describe Game do

  it 'ask me how many player want to play as an integer' do
    game = Game.new(1)
    expect(game.player_count).to eql(1)
  end
  
  
end