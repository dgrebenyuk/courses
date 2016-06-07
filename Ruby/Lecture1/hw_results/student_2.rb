def task_one
  summ = 0
  array = [Array.new(4), Array.new(4), Array.new(4), Array.new(4)]
  array.each_index {|i| array[i].each_index{|j| array[i][j] = rand(-10..10)}}

  for x in 0..3
    for y in 0..3
	  if array[x][y] < 0
	    puts array[x][y]
		summ = summ + array[x][y]
	  end
    end
  end	
  print "summ: ", summ
end

def task_two
  summ = 0
  hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
  hash.each_key{|key|
    if key.to_s.include? "yes" 
	  summ = summ + 1
    end}
  print "result: ", summ
end