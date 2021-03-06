require './test_file'

def sequence_sum(begin_number, end_number, step)
  return 0 if begin_number > end_number
  begin_number.step(end_number, step).inject(&:+)
end
