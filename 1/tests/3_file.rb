require './3_test.rb'

def stray(numbers)
  numbers.partition {|x| x == numbers[0]}.find {|x| x.size == 1}.at(0)
end
