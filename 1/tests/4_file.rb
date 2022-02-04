require './test_file'

def multiplication_table(size)
  [*1..size].map {|x| [*1..size].map {|y| x * y}}
end
