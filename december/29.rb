require 'rspec'

class Array
  def bubble_sort
    arr = self
    loop do
      swapped = false
      (self.length-1).times do |i|
        if arr[i] > arr[i+1]
          a = arr[i]
          arr[i] = arr [i+1]
          arr [i+1] = a
          swapped = true
        end
      end
    break if !swapped
    end
  arr
  end
end

describe 'Adding bubble sort to the Array class' do
  it 'Properly sorts an array' do
    arr = [4, 1, 6, 10, 44, 2, 3]
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end
