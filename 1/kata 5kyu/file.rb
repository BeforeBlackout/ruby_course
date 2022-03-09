class PaginationHelper
  
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end

  # returns the number of pages
  def page_count
    sliced.size
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    total = sliced.fetch(page_index, -1)
    total == (-1) ? -1 : total.size
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    total = @collection.map.with_index{|x, i| [x, i]}.each_slice(@items_per_page).to_a
    index = total.find_index {|page| page.any? {|element| element.include?(item_index)}}
    index == nil ? -1 : index
  end
  
  def sliced
    @collection.each_slice(@items_per_page).to_a
  end
end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 4)

