require 'rspec'

# class LazyObject < ::BasicObject
#   def initialize(&callable)
#     @callable = callable
#   end

#   def __target_object__
#     @__target_object__ ||= @callable.call
#   end

#   def method_missing(method_name, *args, &block)
#     __target_object__.send(method_name, *args, &block)
#   end
# end

def big_data_parser num
  # (1..num).lazy.map{|i| i ** 2 }.first(5)
  num.times.lazy.map {|n| (n+1) **2}.first(5)
end

describe 'Big Data' do
  it 'can take a large value as an input and not timeout' do
    expect(big_data_parser 1_000_000_000_000_000_000). to eq([1, 4, 9, 16, 25])
  end
end

