require './file.rb'

describe "#sequence_sum(begin_number, end_number, step)" do
  it "should return 0 if begin_number bigger than end_number" do
    begin_num = 5
    end_num = 3
    step = 1
    expect(sequence_sum(begin_num, end_num, step)).to eq (0)
  end

  it "returns the sum of sequence of integers" do
    begin_num = 1
    end_num = 8
    step = 2
    expect(sequence_sum(begin_num, end_num, step)).to eq (16)
  end
end