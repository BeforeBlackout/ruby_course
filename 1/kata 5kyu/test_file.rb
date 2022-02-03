require './file.rb'
describe '#page_count' do
  it "return the number of pages" do
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    expect(helper.page_count).to eq 2  
  end   
end

describe "#item_count" do
  it "return the number of items within the entire collection" do
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    expect(helper.item_count).to eq 6
  end
end

describe '#page_item_count(page_index)' do
  it "returns the number of items on the current page" do
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    index = 1
    expect(helper.page_item_count(index)).to eq 2 
  end

  it "returns '-1' for page_index that are out of range" do
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    index = 10 #we have 2 pages only (0..1)
    expect(helper.page_item_count(index)).to be -1
  end
end

describe '#page_index(item_index)' do
  it "determines what page an item is on" do 
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    index = 2 #we have 2 pages
    # index 0 -->[["a", 0], ["b", 1], ["c", 2], ["d", 3]] and index 1 -->[["e", 4], ["f", 5]]
    expect(helper.page_index(index)).to eq 0
  end
  
  it "returns '-1' for item_index values that are out of range" do 
    helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    index = 20 #we have 6 elements with indexes (0..5)
    expect(helper.page_index(index)).to be -1
  end
end
