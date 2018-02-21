require 'rspec'

def cloned_cycle arr, num
  # #ethan's solution:
  # arr * num
  big_arr = []
  num.times { arr.each { |el| big_arr << el }}
  big_arr
end

describe 'Cloned cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..3).to_a
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 1, 2, 3, 1, 2, 3])
  end
end
