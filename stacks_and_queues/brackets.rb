def solution(s)
  pairs = {
    '{' => '}',
    '[' => ']',
    '(' => ')'
  }

  stack = []

  s.chars.each do |char|
    if pairs.keys.include?(char)
      stack << char
    else
      return 0 if pairs[stack.pop] != char
    end
  end

  # if first brackets pushed in does not have a closing pair
  return 0 if stack.any?
  1
end
