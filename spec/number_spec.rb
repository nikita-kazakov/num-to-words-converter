require 'rspec'
require_relative '../number'

describe Number do

  before do
  end

  it 'outputs "five" when input is 5' do
    number = Number.new(5)
    expect(number.num_to_text).to eq("five ")
  end

  it 'outputs "fourteen" when input is 14' do
    number = Number.new(14)
    expect(number.num_to_text).to eq("fourteen ")
  end

  it 'outputs "five" when input is 25' do
    number = Number.new(25)
    expect(number.num_to_text).to eq("twenty five ")
  end

  it 'when input is 525' do
    number = Number.new(525)
    expect(number.num_to_text).to eq("five hundred twenty five ")
  end



end