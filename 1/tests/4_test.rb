require './file.rb'

describe '#multiplication_table(size)' do
  it "creats NxN table out of size provided in params" do
    size = 5
    expect(multiplication_table(size)).to  eq [
      [1, 2, 3, 4, 5],
      [2, 4, 6, 8, 10],
      [3, 6, 9, 12, 15],
      [4, 8, 12, 16, 20],
      [5, 10, 15, 20, 25]] 
  end
end
