# Monkey patch String with validation method
class String
  def valid?
    return false if length.odd?
    mapping = {'}' => '{', ']' => '[', ')' => '(', '>' => '<' }
    arr = split('')
    while arr.any?
      next if mapping[arr.pop] == arr.shift
      return false
    end
    true
  end
end
