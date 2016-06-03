def perm_missing_element(a)
  seen = {}

  a.each do |number|
    seen[number] = true
  end

  max = a.max

  for i in 1..(max + 1)
    return i unless seen[i]
  end

  1
end
