require 'rspec'

def title_creator title, tag
  #string method:
  "<#{tag}>#{title}</#{tag}>"

  # #array method:
  # arr = ["<h1>"]
  # arr.push(title, "</h1>").join
end

describe 'HTML h1 converter' do
  it 'outputs an h1 tag given a title' do
    expect(title_creator 'A Heading','h1').to eq('<h1>A Heading</h1>')
    expect(title_creator 'some text...','p').to eq('<p>some text...</p>')
  end
end
