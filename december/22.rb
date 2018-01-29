require 'rspec'

headers = [
  '1B',
  '2B',
  '3B',
  'SS',
  'C',
  'P',
  'LF',
  'CF',
  'RF'
]

astros = [
  'Gurriel',
  'Altuve',
  'Bregman',
  'Correa',
  'Gattis',
  'Keuchel',
  'Beltran',
  'Springer',
  'Reddick'
]

rangers = [
  'Fielder',
  'Andrus',
  'Odor',
  'Beltre',
  'Lucroy',
  'Darvish',
  'Gomez',
  'Choo',
  'Mazara'
]

def position_filter(headers, *data)
  filled = []
  data.each.with_index do |datum, i|
    # p datum
    j = 0
    while j < headers.length
      filled[i] = [headers[j],datum[j]]
      j += 1
    end
  end
  filled
  # headers.zip(*data)
end
p position_filter(headers, astros, rangers)

describe 'Position Filter' do
  it 'lines up players with their positions' do
    test_headers = ['1B', '2B', 'P']
    test_team = ['First Base Player', 'Second Base Player', 'Pitcher']
    expect(position_filter(test_headers, test_team).first).to eq(['1B', 'First Base Player'])
    expect(position_filter(headers, astros, rangers).first).to eq(['1B', 'Gurriel','Fielder'])
  end
end
