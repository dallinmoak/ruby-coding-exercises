require 'rspec'

class String

  def clean_up
    #Jordan's method:
    arr = self.scan(/\w+/)
    arr.join(" ")
  end

  def total_words
    self.clean_up.split.count
  end

  def word_list
    list = Hash.new(0)
    self.downcase.clean_up.split.each do |word|
      list[word] += 1
    end
    list
  end
end

describe 'Word Reporter' do
  before do
    @str = "- the quick brown fox / jumped over the lazy fox."
  end

  it 'Counts words accurately' do
    expect(@str.total_words).to eq(9)
  end

  it 'Returns a hash that totals up word usage' do
    expect(@str.word_list).to eq({
      "the"=>2,
      "quick"=>1,
      "brown"=>1,
      "fox"=>2,
      "jumped"=>1,
      "over"=>1,
      "lazy"=>1
      })
  end
end
