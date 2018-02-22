require 'rspec'

class Array
  def remove_duplicates
    # arr = []
    # self.each { |el| arr << el if !(arr.include?(el)) }
    # arr

    # #craig's solution:
    # arr2 = []
    # until self.length == 0 do
    #   item = self[0]
    #   arr2.push(item)
    #   self.delete(item)
    # end
    # arr2

    # #nick's solution: NOTE: can use & instead of |
    # self|self

    # #jordan's solution
    # self.each_with_object([]) { |el, arr| arr << el if !(arr.include?(el)) }
  end
end

describe 'Duplicate removal' do
  it 'Removed duplicates from an array' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.remove_duplicates).to eq([1, 3, 4])
  end
end
