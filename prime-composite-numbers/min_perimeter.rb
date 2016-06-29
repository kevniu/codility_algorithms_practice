def solution(n)
  a = 1

  i = 1
  while i**2 <= n
    a = i if n % i == 0
    i += 1
  end
  b = n / a

  2 * (a + b)
end
