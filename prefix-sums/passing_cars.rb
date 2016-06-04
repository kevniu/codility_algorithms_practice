def solution(a)
  counter = 0
  num_ones = a.reduce(:+)

  a.each do |num|
    if num == 0
      counter += num_ones
    else
      num_ones -= 1
    end
  end
  counter > 1_000_000_000 ? -1 : counter
end
