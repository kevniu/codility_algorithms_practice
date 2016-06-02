def solution(x, y, d)
  if (y - x) <= d
    1
  else
    ((y - x)/(d.to_f)).ceil
  end
end
