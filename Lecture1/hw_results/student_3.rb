def task1
  arr = Array.new(4) { Array.new(4) }
  negativeSum = 0
  arr = arr.map! do |subArr|
    subArr.map! do |item|
      val = rand(-10..10)
      if val<0
        puts val
        negativeSum+=val
      end
      item = val
    end
  end
  puts arr.inspect
  puts "sum of negative elemets #{negativeSum}"
end

def task2
  hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30,
          key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
  i=0
  hash.each do |key, val|
    if key.to_s.index('yes') == 0
      i+=1
    end
  end
  puts "there are #{i} keys starts with 'yes'"
end

task1
puts "================================="
task2