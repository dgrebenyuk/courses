a=Array.new(4, Array.new(4).map{|e| e=rand(-10..10)
  a_if {|x| x < arg }
  a.map{|el| print el," "}
  array_print(a)
puts a

############################                              
                               
                               
hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
pocket = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}
pocket.value?("yes")    #=> true