def balanced_brackets?(string)
  stack = []
  string.each_char do |char|
    if ['(', '[', '{'].include?(char)
      stack << char
    elsif [')', ']', '}'].include?(char)
      if char == ')' && stack.last == '('
        stack.pop
      elsif char == ']' && stack.last == '['
        stack.pop
      elsif char == '}' && stack.last == '{'
        stack.pop
      end
    end
  end
  if stack.length.zero?
    true
  else
    false
  end
end