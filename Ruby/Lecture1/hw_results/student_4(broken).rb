arr = []
summ = 0
arr[0] = Array.new(4){ |index| index = rand(-10..10)}
i = 0
4.times do
	if arr[0,i] < 0 then do
		summ = summ + arr[0,i]
		puts arr[0,i]
		end
	end
end
i = 0
arr[1] = Array.new(4){ |index| index = rand(-10..10)}
4.times do
	if arr[1,i] < 0 then do
		summ = summ + arr[1,i]
		puts arr[1,i]
		end
	end
end
i = 0
arr[2] = Array.new(4){ |index| index = rand(-10..10)}
4.times do
	if arr[2,i] < 0 then do
		summ = summ + arr[2,i]
		puts arr[2,i]
		end
	end
end
i = 0
arr[3] = Array.new(4){ |index| index = rand(-10..10)}
4.times do
	if arr[3,i] < 0 then do
		summ = summ + arr[3,i]
		puts arr[3,i]
		end
	end
end


####################


arr = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, 
	key: 'some value', 'yestarday1' => 34, 'yestaryear' => 2014}
k = 0
arr.each{|key| key =~ /\A(yes)/? : k +=1}
puts k