def array_task
  h = w = 4
  arr = Array.new(h){ Array.new(w){ rand(-10..10) } }
  puts "Original array: #{arr}"
  arr.flatten!.select!{ |n| n < 0 }
  puts "Negative numbers #{arr} Sum: #{arr.inject(:+)}"
end

def hash_task
  hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
  hash.keys.select{ |k| k =~ /^yes/i }.size
end
