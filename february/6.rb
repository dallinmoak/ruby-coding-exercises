require 'rspec'

def find_element players, player
  # # owen's solution:
  # players.rassoc(player)
  players.each { |sub_array| return sub_array if sub_array[1] == player }
end

describe 'Find Element' do
  it 'returns an array from a nested array if the second element equals the queried element' do
    players = [
      [27, 'Jose Altuve'],
      [2,  'Alex Bregman'],
      [1,  'Carlos Correa'],
      [9,  'Marwin Gonzalez'],
      [10, 'Yulieski Gurriel']
    ]

    expect(find_element(players, 'Carlos Correa')).to eq([1, 'Carlos Correa'])
  end
end

