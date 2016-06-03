def solution(n, a)
  counters = Array.new(n, 0)
  max = 0
  min = 0

  a.each do |num|
    if num <= n
      if counters[num - 1] < min + 1
        counters[num - 1] = min + 1
      else
        counters[num - 1] += 1
      end
      max = [max, counters[num - 1]].max
    else
      min = max
    end
  end

  counters.each_index do |i|
    counters[i] = min if counters[i] < min
  end
  counters
end
