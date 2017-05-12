class Array
  def top(count = 1)
    arr = group_by { |el| el }.values.sort_by { |ar| -ar.size }.flatten.uniq
    count > 1 ? arr.first(count) : arr.first
  end
end
