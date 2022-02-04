require './file.rb'

describe '#stray(numbers)' do
  it "returns one different number" do 
    numbers = [1,  1, 2, 1, 1, 1, 1, 1]
    expect(stray(numbers)).to eq 2 
  end 
end
