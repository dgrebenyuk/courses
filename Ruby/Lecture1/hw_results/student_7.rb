class Matr
	#creates matrix
	def mt
		martix_numbers=Array.new(4).map{|col| col=Array.new(4).map{|num| num=rand(21)-10}}
		#matrix_numbers = []
		#	(0...4).each do |l|
		#		a[l] = []
		 # 		(0...4).each do |c|
		 #		a[l] << rand(0..20)-10
		 #	end
		#end
	end
	#shows array
	def show_array
		our_array=Matr.new.mt	
		puts "so, array is #{our_array.inspect}"
		return (our_array)
	end

	#shows negative numbers and their sum	
	def negative
		negative_numbers=show_array.flatten.reject{|num| num>=0}	
		puts "negative numbers #{negative_numbers}"
		puts "negative elements sum #{negative_numbers.inject(0){|sum, elem| sum+=elem}}"
	end
	matrix=Matr.new.negative #entrance point
end


####################

default={'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', 
	:yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}

puts "number of keys with 'yes': #{default.keys.grep(/yes/).length}"
