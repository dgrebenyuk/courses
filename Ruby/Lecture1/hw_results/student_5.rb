a=Array.new(4){ rand(-10...10) }
b=Array.new(4){ rand(-10...10) }
c=Array.new(4){ rand(-10...10) }
d=Array.new(4){ rand(-10...10) }
f=[a,b,c,d]
e=f.flatten
j=e.find_all{|x| (x < 0)}
sum=j.inject(0) { |m, n| m + n }
puts "Sum of negative elements  : #{sum}"
puts j

####################

a={"yes" => 23, "b" => "travel", "yesterday" => 34, 5 => "234", :yesss => :fg, try: 30, key: "some value", "yesterday1" => 34, "yesteryear" => 2014}
b=a.keys
c=b.grep(/\Ayes/)
puts d=c.size
