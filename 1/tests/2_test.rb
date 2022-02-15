require './2_file.rb'

describe '#duty_free(price, discount, holiday_cost)' do
  it "returns money you saved during duty free discount" do
    price = 20 # one bottle cost
    discount = 15 # discount size
    holiday_cost = 2000 # total money
    expect(duty_free(price, discount, holiday_cost)).to eq 652  
  end
end