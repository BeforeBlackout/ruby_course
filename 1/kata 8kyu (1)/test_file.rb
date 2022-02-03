require './file.rb'

describe "#litres(time)" do
  it "returns litres of water per hour" do
    cycling_time = 5 #in hours
    expect(litres(cycling_time)).to eq (5*0.5).floor
  end

  it "returns rounded value(integer)" do
    cycling_time = 5 #in hours
    expect(litres(cycling_time)).to be_an_instance_of Integer
  end
end