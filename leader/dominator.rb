def solution(a)
  frequency = a.inject(Hash.new(0)) { |h, v| h[v] += 1; h }

  dominator = a.max_by { |v| frequency[v] }

  occurence = frequency[dominator]

  if occurence > (a.length / 2)
    a.each_with_index { |v, i|
      if v == dominator
        return i
      end
    }
  else
    -1
  end

end
