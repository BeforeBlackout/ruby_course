require './file.rb'

describe '#f(x)' do
  it "returns a good approximation of f(x)" do
  x = 2.6e-08
  expect(f(x)).to eq 1.29999999155e-08
  end
end