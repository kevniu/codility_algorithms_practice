def solution(a, b, k)
  if a % k == 0
    b / k - a / k + 1
  else
    b / k - a / k
  end
end
