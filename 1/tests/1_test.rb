require './file.rb'

describe '#remove(s)' do
  it "remove all exclamation marks from the end of sentence" do
    start_string = "Hello! Hello!"
    expected = "Hello! Hello"
    expect(remove(start_string)).to eq(expected)  
  end

  it "returns '' for empty string" do 
    start_string = ""
    expect(remove(start_string)).to eq ""
  end
end
