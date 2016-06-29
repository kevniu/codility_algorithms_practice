def solution(a)
  max_ending = max_slice = 0
  max = nil

  a.each do |value|
    max = value if max.nil?
    max = value > max ? value : max
    max_ending = max_ending + value > 0 ? max_ending + value : 0
    max_slice = max_slice > max_ending ? max_slice : max_ending
  end

  max_slice == 0 ? max : max_slice
end
