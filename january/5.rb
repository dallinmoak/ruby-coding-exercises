require 'rspec'

def generate_alphabet
  arr = []
  ('a'..'z').each do |letter|
    arr.push(letter.to_s)
  end
  arr
end

describe 'Alphabet generator' do
  it 'generates the full alphabet' do
    expect(generate_alphabet).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"])
  end
end
