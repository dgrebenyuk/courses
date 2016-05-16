def work1  
  size_array = 4  
  summa = 0
  my_array = Array.new(size_array){Array.new(size_array){rand(-10..10)}}  
  
  my_array.each do |first|    
    first.each do |second|
      if 0 > second 
        puts second
        summa += second      
      end
    end
  end
  puts 'Summa: ' + summa.to_s
end

def work2
  my_hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
  total = 0
  my_hash.each {|key, value| 
    if key =~ /^yes/ 
      total += 1
      puts key
    end    
  }
  puts 'Total: ' + total.to_s
end

#require '/www/ruby/home1.rb' 
