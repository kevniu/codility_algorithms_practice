def solution(s)
  stack = []

  s.chars.each do |char|
    if char == '('
      stack << char
    else
      return 0 if stack.pop != '('
    end
  end

  return 0 if stack.any?
  1
end
