require './5_test.rb'


def find(seq) 
  seq.sort!
  if seq.size < 2
    return []
  end
  
  d = (seq.max - seq.min).fdiv(seq.size)  
  i = 0
  while seq[i+1] - seq[i] == d  
    i += 1
  end 
    seq[i] + d
end
