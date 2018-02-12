require 'rspec'

def getTop frac
 frac.split('/')[0].to_i
end

def getBottom frac
  frac.split('/')[1].to_i
end

def reduce frac
  top = getTop frac
  bottom = getBottom frac
  factor = top % bottom
  "#{top/factor}/#{bottom/factor}"
end

def fraction_calculator fraction_one, fraction_two, operator
  case operator
  when '*'
    frac = "#{getTop(fraction_one) * getTop(fraction_two)}/#{getBottom(fraction_one) * getBottom(fraction_two)}"
  when '/'
    frac = "#{getTop(fraction_one) * getBottom(fraction_two)}/#{getBottom(fraction_one) * getTop(fraction_two)}"
  when '+'
    frac = "#{getTop(fraction_one) + getTop(fraction_two)}/#{getBottom(fraction_one) + getBottom(fraction_two)}"
  when '-'
    frac = "#{getTop(fraction_one) - getTop(fraction_two)}/#{getBottom(fraction_one) - getBottom(fraction_two)}"
  end
  reduce frac
end

p (fraction_calculator("1/3", "2/4", "*"))
p (fraction_calculator("1/3", "2/4", "/"))
p (fraction_calculator("1/3", "2/4", "+"))
p (fraction_calculator("1/3", "2/4", "-"))

describe 'Fraction multiplication' do
  it 'can multiply two fractions and output the value in a string based fraction format' do
    expect(fraction_calculator("1/3", "2/4", "*")).to eq("1/6")
    expect(fraction_calculator("1/3", "2/4", "/")).to eq("2/3")
    expect(fraction_calculator("1/3", "2/4", "+")).to eq("5/6")
    expect(fraction_calculator("1/3", "2/4", "-")).to eq("-1/6")
  end
end

