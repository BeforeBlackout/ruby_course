require './4_test'

def multiplication_table(size)
  return [] if size == 0
  [*1..size].map {|x| [*1..size].map {|y| x * y}}
end
