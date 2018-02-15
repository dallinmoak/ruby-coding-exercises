require 'rspec'

def csv_parser file_path
  # #long solution:
  # crm = File.read(file_path)
  # arr1 = crm.split(/\R/)
  # arr2 = []
  # arr1.each do |line|
  #   arr2.push(line.split(','))
  # end
  # arr2
  #short solution:
  File.read(file_path).split(/\R/).map { |l| l.split(',')}
end

describe 'CSV Parser' do
  it 'parses a CSV file and stores each line as an array, with each column as a separate element in the array' do
   final_data = [["Name", "Title", "Email"], ["Darth Vader", "CEO", "betterthan@theforce.com"], ["Luke Skywalker", "Dev", "daddy@issues.com"], ["Kylo Ren", "COO", "daddy2@issues.com"]]
   expect(csv_parser('support/crm.csv')).to eq(final_data)
  end
end

